package org.cunframework.web.ipro.maintain.notification.service;

import org.cunframework.modules.common.service.BaseService;
import org.cunframework.web.ipro.maintain.notification.entity.NotificationData;
import org.cunframework.web.ipro.maintain.notification.repository.NotificationDataRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 */
@Service
public class NotificationDataService extends BaseService<NotificationData, Long> {

    private NotificationDataRepository getNotificationDataRepository() {
        return (NotificationDataRepository) baseRepository;
    }


    public void markReadAll(final Long userId) {
        getNotificationDataRepository().markReadAll(userId);
    }


    public void markRead(final Long notificationId) {
        NotificationData data = findOne(notificationId);
        if(data == null || data.getRead().equals(Boolean.TRUE)) {
            return;
        }
        data.setRead(Boolean.TRUE);
        update(data);
    }
}
