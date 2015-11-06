package org.cunframework.web.ipro.admin.user.web.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.UnauthorizedException;
import org.cunframework.modules.common.entity.search.Searchable;
import org.cunframework.modules.utils.MessageUtil;
import org.cunframework.modules.common.web.controller.BaseCRUDController;
import org.cunframework.web.ipro.admin.user.entity.UserOnline;
import org.cunframework.web.ipro.shiro.session.OnlineSession;
import org.cunframework.web.ipro.shiro.session.eis.OnlineSessionDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 */
@Controller
@RequestMapping(value = "/admin/sys/user/online")
public class UserOnlineController extends BaseCRUDController<UserOnline, String> {

    @Autowired
    private OnlineSessionDAO onlineSessionDAO;

    public UserOnlineController() {
    }


    @Override
    public String list(Searchable searchable, Model model) {
        if (!SecurityUtils.getSubject().isPermitted("sys:userOnline:view or monitor:userOnline:view")) {
            throw new UnauthorizedException(MessageUtil.message("no.view.permission", "sys:userOnline:view或monitor:userOnline:view"));
        }
        return super.list(searchable, model);
    }

    @RequestMapping("/forceLogout")
    public String forceLogout(@RequestParam(value = "ids") String[] ids) {

        if (!SecurityUtils.getSubject().isPermitted("sys:userOnline or monitor:userOnline")) {
            throw new UnauthorizedException(MessageUtil.message("no.view.permission", "sys:userOnline或monitor:userOnline"));
        }

        for (String id : ids) {
            UserOnline online = baseService.findOne(id);
            if (online == null) {
                continue;
            }
            OnlineSession onlineSession = (OnlineSession) onlineSessionDAO.readSession(online.getId());
            if (onlineSession == null) {
                continue;
            }
            onlineSession.setStatus(OnlineSession.OnlineStatus.force_logout);
            online.setStatus(OnlineSession.OnlineStatus.force_logout);
            baseService.update(online);
        }
        return redirectToUrl(null);
    }

}
