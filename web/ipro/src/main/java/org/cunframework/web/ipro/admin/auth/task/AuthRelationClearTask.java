package org.cunframework.web.ipro.admin.auth.task;

import com.google.common.base.Function;
import com.google.common.collect.Lists;
import com.google.common.collect.Sets;

import org.apache.shiro.SecurityUtils;
import org.cunframework.modules.common.repository.RepositoryHelper;
import org.cunframework.modules.utils.LogUtils;
import org.cunframework.web.ipro.admin.auth.entity.Auth;
import org.cunframework.web.ipro.admin.auth.service.AuthService;
import org.cunframework.web.ipro.admin.group.service.GroupService;
import org.cunframework.web.ipro.admin.organization.service.JobService;
import org.cunframework.web.ipro.admin.organization.service.OrganizationService;
import org.cunframework.web.ipro.admin.permission.entity.Role;
import org.cunframework.web.ipro.admin.permission.service.RoleService;
import org.springframework.aop.framework.AopContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.Set;

/**
 * 清理Auth无关联的关系
 * 1、Auth-Role
 * 2、Auth-Organization/Job
 * 3、Auth-Group
 * <p/>
 */
@Service
public class AuthRelationClearTask {

    @Autowired
    private AuthService authService;

    @Autowired
    private RoleService roleService;

    @Autowired
    private GroupService groupService;

    @Autowired
    private OrganizationService organizationService;

    @Autowired
    private JobService jobService;


    /**
     * 清除删除的角色对应的关系
     */
    public void clearDeletedAuthRelation() {

        Set<Long> allRoleIds = findAllRoleIds();

        final int PAGE_SIZE = 100;
        int pn = 0;

        Page<Auth> authPage = null;

        do {
            Pageable pageable = new PageRequest(pn++, PAGE_SIZE);
            authPage = authService.findAll(pageable);
            //开启新事物清除
            try {
                AuthRelationClearTask authRelationClearService = (AuthRelationClearTask) AopContext.currentProxy();
                authRelationClearService.doClear(authPage.getContent(), allRoleIds);
            } catch (Exception e) {
                //出异常也无所谓
                String username = (String) SecurityUtils.getSubject().getPrincipal();
                LogUtils.logError("clear auth relation error", username, e);
            }
            //清空会话
            RepositoryHelper.clear();
        } while (authPage.hasNextPage());
    }

    public void doClear(Collection<Auth> authColl, Set<Long> allRoleIds) {
        for (Auth auth : authColl) {
            switch (auth.getType()) {
                case user:
                    break;//因为用户是逻辑删除不用管
                case user_group:
                case organization_group:
                    if (!groupService.exists(auth.getGroupId())) {
                        authService.delete(auth);
                        continue;
                    }
                    break;
                case organization_job:
                    if (!organizationService.exists(auth.getOrganizationId())) {
                        auth.setOrganizationId(0L);
                    }
                    if (!jobService.exists(auth.getOrganizationId())) {
                        auth.setJobId(0L);
                    }
                    //如果组织机构/工作职务都为0L 那么可以删除
                    if (auth.getOrganizationId() == 0L && auth.getJobId() == 0L) {
                        authService.delete(auth);
                        continue;
                    }
                    break;
            }

            boolean hasRemovedAny = auth.getRoleIds().retainAll(allRoleIds);
            if (hasRemovedAny) {
                authService.update(auth);
            }
        }

    }

    private Set<Long> findAllRoleIds() {
        return Sets.newHashSet(Lists.transform(roleService.findAll(), new Function<Role, Long>() {
            @Override
            public Long apply(Role input) {
                return input.getId();
            }
        }));
    }


}
