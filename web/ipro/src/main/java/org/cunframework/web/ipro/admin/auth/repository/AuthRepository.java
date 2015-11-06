package org.cunframework.web.ipro.admin.auth.repository;

import java.util.Set;

import org.cunframework.modules.common.repository.BaseRepository;
import org.cunframework.web.ipro.admin.auth.entity.Auth;

/**
 */
public interface AuthRepository extends BaseRepository<Auth, Long> {

    Auth findByUserId(Long userId);

    Auth findByGroupId(Long groupId);

    Auth findByOrganizationIdAndJobId(Long organizationId, Long jobId);

    ///////////委托给AuthRepositoryImpl实现
    public Set<Long> findRoleIds(Long userId, Set<Long> groupIds, Set<Long> organizationIds, Set<Long> jobIds, Set<Long[]> organizationJobIds);

}
