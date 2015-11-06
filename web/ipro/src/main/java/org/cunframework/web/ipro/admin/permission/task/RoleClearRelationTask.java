package org.cunframework.web.ipro.admin.permission.task;

import org.apache.shiro.SecurityUtils;
import org.cunframework.modules.common.repository.RepositoryHelper;
import org.cunframework.modules.utils.LogUtils;
import org.cunframework.web.ipro.admin.permission.entity.Role;
import org.cunframework.web.ipro.admin.permission.entity.RoleResourcePermission;
import org.cunframework.web.ipro.admin.permission.service.PermissionService;
import org.cunframework.web.ipro.admin.permission.service.RoleService;
import org.cunframework.web.ipro.admin.resource.service.ResourceService;
import org.springframework.aop.framework.AopContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.Iterator;

/**
 * 清理无关联的Role-Resource/Permission关系
 * 1、Role-Resource
 * 2、Role-Permission
 * <p/>
 */
@Service()
public class RoleClearRelationTask {

    @Autowired
    private RoleService roleService;

    @Autowired
    private ResourceService resourceService;

    @Autowired
    private PermissionService permissionService;

    /**
     * 清除删除的角色对应的关系
     */
    public void clearDeletedRoleRelation() {

        final int PAGE_SIZE = 100;
        int pn = 0;

        Page<Role> rolePage = null;
        do {
            Pageable pageable = new PageRequest(pn++, PAGE_SIZE);
            rolePage = roleService.findAll(pageable);
            //开启新事物清除
            try {
                RoleClearRelationTask roleClearRelationTask = (RoleClearRelationTask) AopContext.currentProxy();
                roleClearRelationTask.doClear(rolePage.getContent());
            } catch (Exception e) {
                //出异常也无所谓
                String username = (String) SecurityUtils.getSubject().getPrincipal();
                LogUtils.logError("clear role relation error", username, e);

            }
            //清空会话
            RepositoryHelper.clear();
        } while (rolePage.hasPrevious());
    }

    public void doClear(Collection<Role> roleColl) {

        for (Role role : roleColl) {

            boolean needUpdate = false;
            Iterator<RoleResourcePermission> iter = role.getResourcePermissions().iterator();

            while (iter.hasNext()) {
                RoleResourcePermission roleResourcePermission = iter.next();

                //如果资源不存在了 就删除
                Long resourceId = roleResourcePermission.getResourceId();
                if (!resourceService.exists(resourceId)) {
                    iter.remove();
                    needUpdate = true;
                }

                Iterator<Long> permissionIdIter = roleResourcePermission.getPermissionIds().iterator();
                while (permissionIdIter.hasNext()) {
                    Long permissionId = permissionIdIter.next();

                    if (!permissionService.exists(permissionId)) {
                        permissionIdIter.remove();
                        needUpdate = true;
                    }
                }

            }

            if (needUpdate) {
                roleService.update(role);
            }


        }

    }

}
