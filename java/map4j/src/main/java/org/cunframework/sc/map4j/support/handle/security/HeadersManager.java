package org.cunframework.sc.map4j.support.handle.security;

import io.undertow.server.HttpServerExchange;
import io.undertow.util.HeaderValues;
import io.undertow.util.HttpString;

/**
 */
public class HeadersManager {

    private final HttpServerExchange exchange;

    public HeadersManager(HttpServerExchange exchange) {
        this.exchange = exchange;
    }

    public boolean isRequestHeaderSet(HttpString headerName) {
        return isSet(getRequestHeader(headerName));
    }

    private boolean isSet(HeaderValues vals) {
        return vals != null && !vals.isEmpty();
    }

    public HeaderValues getRequestHeader(HttpString headerName) {
        return exchange.getRequestHeaders().get(headerName);
    }

    public void addResponseHeader(HttpString headerName, String value) {
        exchange.getResponseHeaders().put(headerName, value);
    }

    public void addResponseHeader(HttpString headerName, Boolean value) {
        exchange.getResponseHeaders().put(headerName, value.toString());
    }
}
