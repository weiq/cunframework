package org.cunframework.web.ipro.admin.permission.repository;

import org.cunframework.modules.common.repository.BaseRepository;
import org.cunframework.web.ipro.admin.permission.entity.Role;
import org.cunframework.web.ipro.admin.permission.entity.RoleResourcePermission;
import org.springframework.data.jpa.repository.Query;

/**
 */
public interface RoleRepository extends BaseRepository<Role, Long> {

    @Query("from RoleResourcePermission where role=?1 and resourceId=?2")
    RoleResourcePermission findRoleResourcePermission(Role role, Long resourceId);
}
