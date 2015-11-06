package org.cunframework.web.ipro.personal.notification.web.controller;

import org.cunframework.modules.common.entity.search.SearchOperator;
import org.cunframework.modules.common.entity.search.Searchable;
import org.cunframework.modules.common.web.bind.annotation.PageableDefaults;
import org.cunframework.modules.common.web.controller.BaseController;
import org.cunframework.web.ipro.admin.user.entity.User;
import org.cunframework.web.ipro.admin.user.web.bind.annotation.CurrentUser;
import org.cunframework.web.ipro.maintain.notification.entity.NotificationData;
import org.cunframework.web.ipro.maintain.notification.service.NotificationDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 */
@Controller
@RequestMapping("/admin/personal/notification")
public class NotificationController extends BaseController {

    @Autowired
    private NotificationDataService notificationDataService;

    @RequestMapping
    @PageableDefaults(value = 20, sort = "id=desc")
    public String list(@CurrentUser User user, Pageable pageable, Model model) {

        Searchable searchable = Searchable.newSearchable();
        searchable.addSearchFilter("userId", SearchOperator.eq, user.getId());

        Page<NotificationData> page = notificationDataService.findAll(pageable);

        model.addAttribute("page", page);
        if(pageable.getPageNumber() == 0) {
            notificationDataService.markReadAll(user.getId());
        }

        return viewName("list");
    }

    @RequestMapping("/markRead")
    @ResponseBody
    public String markRead(@RequestParam("id") Long id) {
        notificationDataService.markRead(id);
        return "";
    }

}
