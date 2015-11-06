package org.cunframework.sc.map4j.support.handle;

import io.undertow.security.api.AuthenticationMechanism;
import io.undertow.security.api.AuthenticationMode;
import io.undertow.security.idm.IdentityManager;
import io.undertow.server.HttpHandler;
import io.undertow.server.HttpServerExchange;
import io.undertow.util.Headers;

import java.net.URISyntaxException;
import java.util.List;

import org.cunframework.sc.map4j.util.HttpStatus;

/**
 *
 */
public abstract class PipedHttpHandler implements HttpHandler {

    private final PipedHttpHandler next;

    /**
     * Creates a default instance of PipedHttpHandler with next = null and
     * 
     */
    public PipedHttpHandler() {
        this(null);
    }

    /**
     * @param next
     * @param dbsDAO
     */
    public PipedHttpHandler(PipedHttpHandler next) {
        this.next = next;
    }

    /**
    *
    * @param exchange
    * @param context
    * @throws Exception
    */
   public abstract void handleRequest(HttpServerExchange exchange, RequestContext context) throws Exception;

   @Override
   public void handleRequest(HttpServerExchange exchange) throws Exception {
       handleRequest(exchange, null);
   }

    protected static void sendWarnings(int SC, HttpServerExchange exchange) throws URISyntaxException {
        if (SC == HttpStatus.SC_NO_CONTENT) {
            exchange.setResponseCode(HttpStatus.SC_OK);
        } else {
            exchange.setResponseCode(SC);
        }
        exchange.getResponseHeaders().put(Headers.CONTENT_TYPE, "application/json");
        exchange.getResponseSender().send("warning...");
    }

    /**
     * @return the next PipedHttpHandler
     */
    protected PipedHttpHandler getNext() {
        return next;
    }
}
