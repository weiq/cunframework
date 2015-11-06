package org.cunframework.sc.map4j.support.handle.applicationlogic;

import java.util.Map;
import io.undertow.server.HttpHandler;

/**
 * ApplicationLogicHandler
 * 
 * <p/>
 * <p>User: weiq
 * <p>Date: 2015年11月5日 下午5:41:16 
 * <p>Version: 1.0
 */
public abstract class ApplicationLogicHandler implements HttpHandler {
    
    private final HttpHandler next;

    protected final Map<String, Object> args;

    public ApplicationLogicHandler(HttpHandler next, Map<String, Object> args) {
        this.next = next;
        this.args = args;
    }
}
