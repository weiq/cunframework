package org.cunframework.sc.map4j.support.handle;

import io.undertow.server.HttpServerExchange;

import java.util.HashMap;
import java.util.Map;

import org.cunframework.sc.map4j.support.handle.RequestContext.METHOD;
import org.cunframework.sc.map4j.support.handle.RequestContext.TYPE;
import org.cunframework.sc.map4j.support.handle.map.MapApiHandler;
import org.cunframework.sc.map4j.support.handle.map.MapScriptHandler;
import org.cunframework.sc.map4j.util.HttpStatus;
import org.cunframework.sc.map4j.util.ResponseHelper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * RequestDispacherHandler 请求分发
 * 
 * <p/>
 * <p>User: weiq
 * <p>Date: 2015年11月5日 下午5:45:30 
 * <p>Version: 1.0
 */
public final class RequestDispacherHandler extends PipedHttpHandler {

    private static final Logger LOGGER = LoggerFactory.getLogger(RequestDispacherHandler.class);

    private final Map<TYPE, Map<METHOD, PipedHttpHandler>> handlersMultimap;

    /**
     */
    public RequestDispacherHandler() {
        this(true);
    }

    /**
     * @param initialize false 不初始化默认handler
     */
    RequestDispacherHandler(boolean initialize) {
        super(null);
        this.handlersMultimap = new HashMap<>();
        if (initialize) {
            defaultInit();
        }
    }

    /**
     * 增加全部的handler到handlerMultimap中
     */
    private void defaultInit() {
        LOGGER.info("初始化默认的 HTTP handlers:");
        // Maps handlers
        putPipedHttpHandler(TYPE.MAPAPI, METHOD.GET, new MapApiHandler());
        putPipedHttpHandler(TYPE.MAPSCRIPT, METHOD.GET, new MapScriptHandler());
        putPipedHttpHandler(TYPE.MAPDOWNLOAD, METHOD.GET, new MapScriptHandler());
        //
    }

    /**
     * 通过类型和方法定位一个handler
     * @param type
     * @param method
     * @return the PipedHttpHandler
     */
    public PipedHttpHandler getPipedHttpHandler(TYPE type, METHOD method) {
        Map<METHOD, PipedHttpHandler> methodsMap = handlersMultimap.get(type);
        return methodsMap != null ? methodsMap.get(method) : null;
    }

    /**
     *
     * @param type the type
     * @param method the HTTP method
     * @param handler the PipedHttpHandler
     */
    void putPipedHttpHandler(TYPE type, METHOD method, PipedHttpHandler handler) {
        LOGGER.info("putPipedHttpHandler( {}, {}, {} )", type, method, handler.getClass().getCanonicalName());
        Map<METHOD, PipedHttpHandler> methodsMap = handlersMultimap.get(type);
        if (methodsMap == null) {
            methodsMap = new HashMap<>();
            handlersMultimap.put(type, methodsMap);
        }
        methodsMap.put(method, handler);
    }
    
    /**
     * 处理请求
     *
     * @param exchange the HttpServerExchange
     * @param context the RequestContext
     * @throws Exception
     */
    @Override
    public final void handleRequest(HttpServerExchange exchange, RequestContext context) throws Exception {
        final PipedHttpHandler httpHandler = getPipedHttpHandler(context.getType(), context.getMethod());

        if (httpHandler != null) {
            httpHandler.handleRequest(exchange, context);
        } else {
            LOGGER.error("调用 getPipedHttpHandler({}, {}) 没有找到相符的 PipedHttpHandler, [url]->{}", context.getType(), context.getMethod(),exchange.getRequestPath());
            ResponseHelper.endExchange(exchange, HttpStatus.SC_METHOD_NOT_ALLOWED);
        }
    }

    
}
