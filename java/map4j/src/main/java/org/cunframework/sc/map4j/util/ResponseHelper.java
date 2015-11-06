package org.cunframework.sc.map4j.util;

import io.undertow.server.HttpServerExchange;
import io.undertow.util.Headers;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.cunframework.modules.utils.JSONHelper;

public class ResponseHelper {

    /**
     *
     * @param exchange
     * @param code
     */
    public static void endExchange(HttpServerExchange exchange, int code) {
        exchange.setResponseCode(code);
        exchange.endExchange();
    }

    /**
     *
     * @param exchange
     * @param code
     * @param message
     */
    public static void endExchangeWithMessage(HttpServerExchange exchange, int code, String message) {
        endExchangeWithMessage(exchange, code, message, null);
    }

    /**
     *
     * @param exchange
     * @param code
     * @param message
     * @param t
     */
    public static void endExchangeWithMessage(HttpServerExchange exchange, int code, String message, Throwable t) {
        exchange.setResponseCode(code);

        String httpStatuText = HttpStatus.getStatusText(code);
        exchange.getResponseHeaders().put(Headers.CONTENT_TYPE, "application/json");
        exchange.getResponseSender().send(getErrorJsonDocument(exchange.getRequestPath(), code, httpStatuText, message, t));
        exchange.endExchange();
    }
    
    private static String getErrorJsonDocument(String href, int code, String httpStatusText, String message, Throwable t) {
        StringBuffer rep = new StringBuffer(href);

        rep.append("\n");
        rep.append("http status code: " + code).append("\n");
        rep.append("http status description: " + httpStatusText).append("\n");
        if (message != null) {
            rep.append("message: " + message).append("\n");
        }
        if (t != null) {
            rep.append("exception: "+t.getClass().getName()).append("\n");

            if (t.getMessage() != null) {
                rep.append("exception message: "+ t.getMessage()).append("\n");
            }

            String stackTrace = getStackTraceJson(t);

            if (stackTrace != null) {
                rep.append("stack trace: "+stackTrace);
            }
        }

        return rep.toString();
    }
    
    private static String getStackTraceJson(Throwable t) {
        if (t == null || t.getStackTrace() == null) {
            return null;
        }
        StringWriter sw = new StringWriter();
        PrintWriter pw = new PrintWriter(sw);
        t.printStackTrace(pw);
        String st = sw.toString();
        st = st.replaceAll("\t", "  ");
        String[] lines = st.split("\n");
        List list = new ArrayList();
        list.addAll(Arrays.asList(lines));
        return JSONHelper.toJSONString(list);
    }

    private ResponseHelper() {
    }
}