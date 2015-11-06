package org.cunframework.web.ipro.maintain.notification.repository;

import org.cunframework.modules.common.repository.BaseRepository;
import org.cunframework.web.ipro.maintain.notification.entity.NotificationTemplate;
import org.springframework.data.jpa.repository.Query;

/**
 */
public interface NotificationTemplateRepository extends BaseRepository<NotificationTemplate, Long> {

    @Query("from NotificationTemplate o where name=?1")
    NotificationTemplate findByName(String name);
}
