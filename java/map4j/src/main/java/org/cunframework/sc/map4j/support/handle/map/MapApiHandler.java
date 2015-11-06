package org.cunframework.sc.map4j.support.handle.map;

import io.undertow.server.HttpServerExchange;
import io.undertow.util.Headers;

import org.cunframework.sc.map4j.Configuration;
import org.cunframework.sc.map4j.support.handle.PipedHttpHandler;
import org.cunframework.sc.map4j.support.handle.RequestContext;
import org.cunframework.sc.map4j.util.HttpStatus;

/**
 * Map4J api 入口
 * 
 * <p/>
 * <p>User: weiq
 * <p>Date: 2015年11月5日 下午5:42:23 
 * <p>Version: 1.0
 */
public class MapApiHandler extends PipedHttpHandler{
    
    public MapApiHandler() {
        super();
    }

    @Override
    public void handleRequest(HttpServerExchange exchange, RequestContext context) throws Exception {
        exchange.getResponseHeaders().put(Headers.CONTENT_TYPE, "text/html");
        
        String dev = context.getParameter(RequestContext.DEVELOP);
        String prefix = exchange.getRequestScheme()+"://"
                + exchange.getHostAndPort() + "/";
        
        StringBuffer rep = new StringBuffer();
        rep.append("(function(){");
        rep.append(    "window.Tiny_loadScriptTime = (new Date).getTime(); ");
        rep.append(    "document.write(");
        rep.append(       "'<script src=\""+prefix+"map/getscript?dev="+dev+"\"></script>'");
        rep.append(    ");");
        rep.append(    "document.write(");
        if("1".equals(dev)){
            rep.append(   "'<style type=\"text/css\">");
            rep.append(   Configuration.CSS_TINY_SOURCE_FILE);
            rep.append(   "</style>'");
        }else //"+Configuration.CSS_TINY_SOURCE_FILE+"
            rep.append(   "'<style type=\"text/css\">"+Configuration.CSS_TINY_COMPRESS_FILE+"</style>'");
        rep.append(    ");");
        rep.append("})();");
        
        exchange.getResponseSender().send(rep.toString());
        exchange.endExchange();
        
    }
}
