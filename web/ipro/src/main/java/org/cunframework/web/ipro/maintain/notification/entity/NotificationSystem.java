package org.cunframework.web.ipro.maintain.notification.entity;

/**
 * 触发的子系统
 */
public enum NotificationSystem {

    system("系统"), excel("excel");

    private final String info;

    private NotificationSystem(final String info) {
        this.info = info;
    }

    public String getInfo() {
        return info;
    }

}
