package org.cunframework.web.ipro.shiro.filter.httpcode;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.apache.shiro.web.util.WebUtils;
import org.cunframework.modules.utils.WebUtil;

/**
 * 扩展FormAuthenticationFilter当页面中请求为Ajax请求时,对于未通过验证的用户附加一个
 * 请求头信息.而不是跳转到登录的页面
 */
public class HTTPStatusCodeAuthenticationFilter extends FormAuthenticationFilter {

	/**
	 * 当访问不允许时区分Ajax请求,并附加http status code
	 */
	@Override
	protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws Exception {
        if (isLoginRequest(request, response)) {
            if (isLoginSubmission(request, response)) {
            	if(WebUtil.isAjaxRequest(WebUtils.toHttp(request))){
            		accessDeniedResponse(request, response);
            		return false;
            	}else
            		return executeLogin(request, response);
            } else {
                return true;
            }
        } else {
        	if(WebUtil.isAjaxRequest(WebUtils.toHttp(request))){
        		accessDeniedResponse(request, response);
        	}else
        		saveRequestAndRedirectToLogin(request, response);
            return false;
        }
    }

	/**
	 * 
	 * 附加一个401 Not Authorized HTTP status code 到客户端
	 * 
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	private void accessDeniedResponse(ServletRequest request,
			ServletResponse response) throws Exception {

		HttpServletResponse httpResponse = WebUtils.toHttp(response);
		httpResponse.addHeader("WWW-Authentication", "simple-ajax");
		httpResponse.sendError(HttpServletResponse.SC_UNAUTHORIZED);
	}
}