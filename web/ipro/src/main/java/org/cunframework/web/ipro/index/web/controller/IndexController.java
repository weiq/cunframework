package org.cunframework.web.ipro.index.web.controller;

import org.cunframework.web.ipro.admin.resource.entity.tmp.Menu;
import org.cunframework.web.ipro.admin.resource.service.ResourceService;
import org.cunframework.web.ipro.admin.user.entity.User;
import org.cunframework.web.ipro.admin.user.web.bind.annotation.CurrentUser;
import org.cunframework.web.ipro.maintain.push.service.PushApi;
import org.cunframework.web.ipro.personal.calendar.service.CalendarService;
import org.cunframework.web.ipro.personal.message.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 后台登录成功后的转向控制
 */
@Controller("adminIndexController")
@RequestMapping("/admin")
public class IndexController {

    @Autowired
    private ResourceService resourceService;

    @Autowired
    private PushApi pushApi;

    @Autowired
    private MessageService messageService;

    @Autowired
    private CalendarService calendarService;


    @RequestMapping(value = {"/{index:index;?.*}"})
    public String index(@CurrentUser User user, Model model) {
        
        pushApi.offline(user.getId());

        return "admin/index/index";
    }


    @RequestMapping(value = "/welcome")
    public String welcome(@CurrentUser User loginUser, Model model) {

        //未读消息
        Long messageUnreadCount = messageService.countUnread(loginUser.getId());
        model.addAttribute("messageUnreadCount", messageUnreadCount);

        //最近3天的日历
        model.addAttribute("calendarCount", calendarService.countRecentlyCalendar(loginUser.getId(), 2));

        return "admin/index/welcome";
    }





}
