package org.cunframework.web.ipro.admin.user.web.controller;

import org.cunframework.modules.common.web.controller.BaseCRUDController;
import org.cunframework.web.ipro.admin.user.entity.UserLastOnline;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 */
@Controller
@RequestMapping(value = "/admin/sys/user/lastOnline")
public class UserLastOnlineController extends BaseCRUDController<UserLastOnline, Long> {

    public UserLastOnlineController() {
        setResourceIdentity("sys:userLastOnline");
    }
}
