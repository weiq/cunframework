package org.cunframework.web.ipro.maintain.notification.entity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

import org.cunframework.modules.common.entity.BaseEntity;

import java.util.Date;

/**
 * 通知数据
 */
@Entity
@Table(name = "maintain_notification_data")
public class NotificationData extends BaseEntity<Long> {

    /**
     *  接收通知的用户
     */
    @NotNull(message = "{not.null}")
    @Column(name = "user_id")
    private Long userId;

    /**
     * 通知所属系统
     */
    @NotNull(message = "{not.null}")
    @Enumerated(EnumType.STRING)
    private NotificationSystem system;

    private String title;
    /**
     * 通知内容
     */
    private String content;

    /**
     * 通知时间
     */
    @Column(name = "date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date date;

    /**
     * 是否已读
     */
    @Column(name = "is_read")
    private Boolean read = Boolean.FALSE;

    public Long getUserId() {
        return userId;
    }

    public void setUserId(final Long userId) {
        this.userId = userId;
    }

    public NotificationSystem getSystem() {
        return system;
    }

    public void setSystem(final NotificationSystem system) {
        this.system = system;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(final String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(final String content) {
        this.content = content;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(final Date date) {
        this.date = date;
    }

    public Boolean getRead() {
        return read;
    }

    public void setRead(final Boolean read) {
        this.read = read;
    }
}
