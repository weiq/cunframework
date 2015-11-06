package org.cunframework.sc.map4j.support.handle.injectors;

import io.undertow.server.HttpServerExchange;

import java.io.File;
import java.util.Arrays;
import java.util.Deque;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.cunframework.modules.utils.URLUtils;
import org.cunframework.sc.map4j.support.handle.PipedHttpHandler;
import org.cunframework.sc.map4j.support.handle.RequestContext;

/**
 * RequestContextInjectorHandler
 * 
 * <p/>
 * <p>User: weiq
 * <p>Date: 2015年11月5日 下午5:42:09 
 * <p>Version: 1.0
 */
public class RequestContextInjectorHandler extends PipedHttpHandler {
    
    private final String whereUri;
    private final String whatUri;

    /**
     *
     * @param whereUri
     * @param whatUri
     * @param next
     */
    public RequestContextInjectorHandler(String whereUri, String whatUri, PipedHttpHandler next) {
        super(next);

        if (whereUri == null) {
            throw new IllegalArgumentException("whereUri cannot be null.");
        }

        if (!whereUri.startsWith("/")) {
            throw new IllegalArgumentException("whereUri must start with \"/\".");
        }

        if (!whatUri.startsWith("/") && !whatUri.equals("*")) {
            throw new IllegalArgumentException("whatUri must start with \"/\".");
        }

        this.whereUri = URLUtils.removeTrailingSlashes(whereUri);
        this.whatUri = whatUri;
    }

    /**
     *
     * @param exchange
     * @param context
     * @throws Exception
     */
    @Override
    public void handleRequest(HttpServerExchange exchange, RequestContext context) throws Exception {
        RequestContext rcontext = new RequestContext(exchange, whereUri, whatUri);
        
        Map<String, Deque<String>> parameters =  exchange.getQueryParameters();
        rcontext.setParameters(parameters);
        
        getNext().handleRequest(exchange, rcontext);
    }

    @Override
    public void handleRequest(HttpServerExchange exchange) throws Exception {
        handleRequest(exchange, new RequestContext(exchange, whereUri, whatUri));
    }
}
