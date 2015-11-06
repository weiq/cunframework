package org.cunframework.web.ipro.maintain.push.web.controller;

import com.google.common.collect.Maps;

import org.cunframework.web.ipro.admin.user.entity.User;
import org.cunframework.web.ipro.admin.user.web.bind.annotation.CurrentUser;
import org.cunframework.web.ipro.maintain.notification.service.NotificationApi;
import org.cunframework.web.ipro.maintain.push.service.PushService;
import org.cunframework.web.ipro.personal.message.service.MessageApi;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;

import java.util.List;
import java.util.Map;

/**
 * 1、实时推送用户：消息和通知
 */
@Controller
public class PushController {

    @Autowired
    private MessageApi messageApi;

    @Autowired
    private NotificationApi notificationApi;

    @Autowired
    private PushService pushService;

    /**
     * 获取页面的提示信息
     * @return
     */
    @RequestMapping(value = "/admin/polling")
    @ResponseBody
    public Object polling(HttpServletResponse resp, @CurrentUser User user) {
        resp.setHeader("Connection", "Keep-Alive");
        resp.addHeader("Cache-Control", "private");
        resp.addHeader("Pragma", "no-cache");

        Long userId = user.getId();
        if(userId == null) {
            return null;
        }
        //如果用户第一次来 立即返回
        if(!pushService.isOnline(userId)) {
            Long unreadMessageCount = messageApi.countUnread(userId);
            List<Map<String, Object>> notifications = notificationApi.topFiveNotification(user.getId());

            Map<String, Object> data = Maps.newHashMap();
            data.put("unreadMessageCount", unreadMessageCount);
            data.put("notifications", notifications);
            pushService.online(userId);
            return data;
        } else {
            //长轮询
            return pushService.newDeferredResult(userId);
        }
    }



}
