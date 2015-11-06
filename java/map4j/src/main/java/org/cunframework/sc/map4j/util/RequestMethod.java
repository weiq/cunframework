package org.cunframework.sc.map4j.util;

import io.undertow.server.HttpServerExchange;
import io.undertow.util.HttpString;
import io.undertow.util.Methods;

public class RequestMethod {
    public static final String PATCH = "PATCH";
    
    public enum METHOD {
        GET,
        POST,
        PUT,
        DELETE,
        PATCH,
        OPTIONS,
        OTHER
    };
    
    public static METHOD selectRequestMethod(HttpServerExchange exchange) {
        HttpString _method = exchange.getRequestMethod();
        
        METHOD method;
        if (Methods.GET.equals(_method)) {
            method = METHOD.GET;
        } else if (Methods.POST.equals(_method)) {
            method = METHOD.POST;
        } else if (Methods.PUT.equals(_method)) {
            method = METHOD.PUT;
        } else if (Methods.DELETE.equals(_method)) {
            method = METHOD.DELETE;
        } else if (PATCH.equals(_method.toString())) {
            method = METHOD.PATCH;
        } else if (Methods.OPTIONS.equals(_method)) {
            method = METHOD.OPTIONS;
        } else {
            method = METHOD.OTHER;
        }
        return method;
    }
}
