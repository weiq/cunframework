package org.cunframework.web.ipro.maintain.notification.repository;

import org.cunframework.modules.common.repository.BaseRepository;
import org.cunframework.web.ipro.maintain.notification.entity.NotificationData;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

/**
 */
public interface NotificationDataRepository extends BaseRepository<NotificationData, Long> {

    @Modifying
    @Query("update NotificationData o set o.read=true where userId=?1")
    void markReadAll(Long userId);
}
