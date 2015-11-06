package org.cunframework.web.ipro.admin.group.repository;

import org.cunframework.modules.common.repository.BaseRepository;
import org.cunframework.web.ipro.admin.group.entity.Group;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 */
public interface GroupRepository extends BaseRepository<Group, Long> {

    @Query("select id from Group where defaultGroup=true and show=true")
    List<Long> findDefaultGroupIds();

}
