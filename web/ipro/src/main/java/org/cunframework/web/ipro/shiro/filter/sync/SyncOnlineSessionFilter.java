package org.cunframework.web.ipro.shiro.filter.sync;

import org.apache.shiro.web.filter.PathMatchingFilter;
import org.cunframework.web.ipro.shiro.ShiroConstants;
import org.cunframework.web.ipro.shiro.session.OnlineSession;
import org.cunframework.web.ipro.shiro.session.eis.OnlineSessionDAO;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 * 同步当前会话数据到数据库
 */
public class SyncOnlineSessionFilter extends PathMatchingFilter {

    private OnlineSessionDAO onlineSessionDAO;

    public void setOnlineSessionDAO(OnlineSessionDAO onlineSessionDAO) {
        this.onlineSessionDAO = onlineSessionDAO;
    }


    /**
     * 同步会话数据到DB 一次请求最多同步一次 防止过多处理  需要放到Shiro过滤器之前
     *
     * @param request
     * @param response
     * @return
     * @throws Exception
     */
    @Override
    protected boolean preHandle(ServletRequest request, ServletResponse response) throws Exception {
        OnlineSession session = (OnlineSession) request.getAttribute(ShiroConstants.ONLINE_SESSION);
        //如果session stop了 也不同步
        if (session != null && session.getStopTimestamp() == null) {
            onlineSessionDAO.syncToDb(session);
        }
        return true;
    }

}
