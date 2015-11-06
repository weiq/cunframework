package org.cunframework.modules.common.web.filter;


import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.cunframework.modules.utils.LogUtils;

import java.io.IOException;

/**
 * 记录访问日志
 */
public class AccessLogFilter extends BaseFilter {


    @Override
    public void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws IOException, ServletException {
        String username = (String) SecurityUtils.getSubject().getPrincipal();
        LogUtils.logAccess(request, username);
        chain.doFilter(request, response);
    }


}
