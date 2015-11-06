package org.cunframework.web.ipro.shiro.filter.user;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.AccessControlFilter;
import org.apache.shiro.web.util.WebUtils;
import org.cunframework.modules.common.Constants;
import org.cunframework.web.ipro.admin.resource.entity.tmp.Menu;
import org.cunframework.web.ipro.admin.resource.service.ResourceService;
import org.cunframework.web.ipro.admin.user.entity.User;
import org.cunframework.web.ipro.admin.user.entity.UserStatus;
import org.cunframework.web.ipro.admin.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import java.io.IOException;
import java.util.List;

/**
 * 验证用户过滤器
 * 1、用户是否删除
 * 2、用户是否锁定
 * 3、Request中放入当前用户,在Controller使用注解方便获取当前用户
 */
public class SysUserFilter extends AccessControlFilter {

    @Autowired
    private UserService userService;
    
    @Autowired
    private ResourceService resourceService;

    /**
     * 用户删除了后重定向的地址
     */
    private String userNotfoundUrl;
    /**
     * 用户锁定后重定向的地址
     */
    private String userBlockedUrl;
    /**
     * 未知错误
     */
    private String userUnknownErrorUrl;

    public String getUserNotfoundUrl() {
        return userNotfoundUrl;
    }

    public void setUserNotfoundUrl(String userNotfoundUrl) {
        this.userNotfoundUrl = userNotfoundUrl;
    }

    public String getUserBlockedUrl() {
        return userBlockedUrl;
    }

    public void setUserBlockedUrl(String userBlockedUrl) {
        this.userBlockedUrl = userBlockedUrl;
    }

    public String getUserUnknownErrorUrl() {
        return userUnknownErrorUrl;
    }

    public void setUserUnknownErrorUrl(String userUnknownErrorUrl) {
        this.userUnknownErrorUrl = userUnknownErrorUrl;
    }

    @Override
    protected boolean preHandle(ServletRequest request, ServletResponse response) throws Exception {
        Subject subject = getSubject(request, response);
        if (subject == null || !subject.isAuthenticated()) {
            return true;
        }

        String username = (String) subject.getPrincipal();
        //此处注意缓存 防止大量的查询db
        User user = userService.findByUsername(username);
        //把当前用户放到session中
        request.setAttribute(Constants.CURRENT_USER, user);
        
        //把菜单列表放到Request中
        List<Menu> menus = resourceService.findMenus(user);
        request.setAttribute(Constants.CURRENT_MENU, menus);
        //把当前菜单地址放到Request中
        request.setAttribute(Constants.CURRENT_MENU_HREF, ((HttpServletRequest)request).getRequestURI());
        //druid监控需要
        ((HttpServletRequest)request).getSession().setAttribute(Constants.CURRENT_USERNAME, username);

        return true;
    }


    @Override
    protected boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue) throws Exception {
        User user = (User) request.getAttribute(Constants.CURRENT_USER);
        if (user == null) {
            return true;
        }

        if (Boolean.TRUE.equals(user.getDeleted()) || user.getStatus() == UserStatus.blocked) {
            getSubject(request, response).logout();
            saveRequestAndRedirectToLogin(request, response);
            return false;
        }
        return true;
    }

    @Override
    protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws Exception {
        getSubject(request, response).logout();
        saveRequestAndRedirectToLogin(request, response);
        return true;
    }

    protected void redirectToLogin(ServletRequest request, ServletResponse response) throws IOException {
        User user = (User) request.getAttribute(Constants.CURRENT_USER);
        String url = null;
        if (Boolean.TRUE.equals(user.getDeleted())) {
            url = getUserNotfoundUrl();
        } else if (user.getStatus() == UserStatus.blocked) {
            url = getUserBlockedUrl();
        } else {
            url = getUserUnknownErrorUrl();
        }

        WebUtils.issueRedirect(request, response, url);
    }

}
