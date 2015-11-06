package org.cunframework.web.ipro.maintain.notification.service;


import java.util.List;
import java.util.Map;

import org.cunframework.web.ipro.maintain.notification.exception.TemplateNotFoundException;

/**
 * 通知接口
 */
public interface NotificationApi {

    /**
     * 发送通知
     * @param userId 接收人用户编号
     * @param templateName 模板名称
     * @param context 模板需要的数据
     * @throws TemplateNotFoundException 没有找到相应模板
     */
    public void notify(Long userId, String templateName, Map<String, Object> context) throws TemplateNotFoundException;

    /**
     *
     * id :
     * title
     * content
     * date
     *
     * @param userId
     * @return
     */
    public List<Map<String, Object>> topFiveNotification(Long userId);
}
