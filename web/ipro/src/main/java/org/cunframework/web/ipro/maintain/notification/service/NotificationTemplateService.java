package org.cunframework.web.ipro.maintain.notification.service;

import org.cunframework.modules.common.service.BaseService;
import org.cunframework.web.ipro.maintain.notification.entity.NotificationTemplate;
import org.cunframework.web.ipro.maintain.notification.repository.NotificationTemplateRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 */
@Service
public class NotificationTemplateService extends BaseService<NotificationTemplate, Long> {

    private NotificationTemplateRepository getNotificationTemplateRepository() {
        return (NotificationTemplateRepository) baseRepository;
    }


    public NotificationTemplate findByName(final String name) {
        return getNotificationTemplateRepository().findByName(name);
    }
}
