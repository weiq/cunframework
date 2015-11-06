package org.cunframework.web.ipro.admin.user.task;

import org.apache.shiro.SecurityUtils;
import org.cunframework.modules.common.repository.RepositoryHelper;
import org.cunframework.modules.utils.LogUtils;
import org.cunframework.web.ipro.admin.organization.service.JobService;
import org.cunframework.web.ipro.admin.organization.service.OrganizationService;
import org.cunframework.web.ipro.admin.user.entity.User;
import org.cunframework.web.ipro.admin.user.entity.UserOrganizationJob;
import org.cunframework.web.ipro.admin.user.service.UserService;
import org.springframework.aop.framework.AopContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Collection;

/**
 * 清理无关联的User-Organization/Job关系
 * 1、User-Organization/Job
 * <p/>
 */
@Service()
public class UserClearRelationTask {

    @Autowired
    private UserService userService;

    @Autowired
    private OrganizationService organizationService;

    @Autowired
    private JobService jobService;


    /**
     * 清除删除的用户-组织机构/工作职务对应的关系
     */
    public void clearDeletedUserRelation() {

        //删除用户不存在的情况的UserOrganizationJob（比如手工从数据库物理删除）。。
        userService.deleteUserOrganizationJobOnNotExistsUser();

        Page<UserOrganizationJob> page = null;

        int pn = 0;
        final int PAGE_SIZE = 100;
        Pageable pageable = null;
        do {
            pageable = new PageRequest(pn++, PAGE_SIZE);
            page = userService.findUserOrganizationJobOnNotExistsOrganizationOrJob(pageable);

            //开启新事物清除
            try {
                UserClearRelationTask userClearRelationTask = (UserClearRelationTask) AopContext.currentProxy();
                userClearRelationTask.doClear(page.getContent());
            } catch (Exception e) {
                //出异常也无所谓
                String username = (String) SecurityUtils.getSubject().getPrincipal();
                LogUtils.logError("clear user relation error", username, e);

            }
            //清空会话
            RepositoryHelper.clear();

        } while (page.hasNext());

    }

    public void doClear(Collection<UserOrganizationJob> userOrganizationJobColl) {
        for (UserOrganizationJob userOrganizationJob : userOrganizationJobColl) {

            User user = userOrganizationJob.getUser();

            if (!organizationService.exists(userOrganizationJob.getOrganizationId())) {
                user.getOrganizationJobs().remove(userOrganizationJob);//如果是组织机构删除了 直接移除
            } else if (!jobService.exists(userOrganizationJob.getJobId())) {
                user.getOrganizationJobs().remove(userOrganizationJob);
                userOrganizationJob.setJobId(null);
                user.getOrganizationJobs().add(userOrganizationJob);
            }
            //不加也可 加上的目的是为了清缓存
            userService.update(user);
        }

    }
}
