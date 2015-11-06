package org.cunframework.sc.map4j.support.handle.applicationlogic;

import io.undertow.server.HttpHandler;
import io.undertow.server.HttpServerExchange;

import java.util.Map;

import org.cunframework.sc.map4j.util.HttpStatus;
import org.cunframework.sc.map4j.util.RequestMethod;
import org.cunframework.sc.map4j.util.RequestMethod.METHOD;
import org.cunframework.sc.map4j.util.ResponseHelper;

/**
 * Ping handler
 * 
 * <p/>
 * <p>User: weiq
 * <p>Date: 2015年11月5日 下午5:41:43 
 * <p>Version: 1.0
 */
public class PingHandler extends ApplicationLogicHandler {

    private final String msg;

    /**
     *
     * @param next
     * @param args
     */
    public PingHandler(HttpHandler next, Map<String, Object> args) {
        super(next, args);
        if(args!=null)
            this.msg = (String) args.get("msg");
        else
            this.msg = "callback from map4j ^.^";
        
    }

    /**
     *
     * @param exchange
     * @param context
     * @throws Exception
     */
    @Override
    public void handleRequest(HttpServerExchange exchange) throws Exception {
        if (RequestMethod.selectRequestMethod(exchange) == METHOD.GET) {
            ResponseHelper.endExchangeWithMessage(exchange, HttpStatus.SC_OK, msg);
        } else {
            exchange.setResponseCode(HttpStatus.SC_METHOD_NOT_ALLOWED);
            exchange.endExchange();
        }
    }
}
