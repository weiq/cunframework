package org.cunframework.sc.map4j.support.handle;

import io.undertow.server.HttpHandler;
import io.undertow.server.HttpServerExchange;

import org.cunframework.sc.map4j.util.HttpStatus;
import org.cunframework.sc.map4j.util.ResponseHelper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 错误处理
 * 
 * <p/>
 * <p>User: weiq
 * <p>Date: 2015年11月5日 下午5:44:38 
 * <p>Version: 1.0
 */
public class ErrorHandler implements HttpHandler {

    private final HttpHandler next;

    private final Logger LOGGER = LoggerFactory.getLogger(ErrorHandler.class);

    /**
     * @param next
     */
    public ErrorHandler(HttpHandler next) {
        this.next = next;
    }

    @Override
    public void handleRequest(HttpServerExchange exchange) throws Exception {
        try {
            next.handleRequest(exchange);
        } catch (RuntimeException be) { //记录自定义错误
            LOGGER.error("请求处理失败", be);

            // ...
            ResponseHelper.endExchangeWithMessage(exchange, HttpStatus.SC_INTERNAL_SERVER_ERROR, "请求处理失败", be);
        } catch (Throwable t) {
            LOGGER.error("请求处理失败", t);

            ResponseHelper.endExchangeWithMessage(exchange, HttpStatus.SC_INTERNAL_SERVER_ERROR, "请求处理失败", t);
        }
    }
}
