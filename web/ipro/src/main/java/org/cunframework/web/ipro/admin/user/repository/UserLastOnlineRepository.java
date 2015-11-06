/**
 *
 */
package org.cunframework.web.ipro.admin.user.repository;

import org.cunframework.modules.common.repository.BaseRepository;
import org.cunframework.web.ipro.admin.user.entity.UserLastOnline;


/**
 */
public interface UserLastOnlineRepository extends BaseRepository<UserLastOnline, Long> {

    UserLastOnline findByUserId(Long userId);
}
