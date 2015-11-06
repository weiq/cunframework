package org.cunframework.sc.map4j.support.handle.map;

import io.undertow.server.HttpServerExchange;
import io.undertow.util.Headers;

import org.apache.commons.lang3.StringUtils;
import org.cunframework.sc.map4j.Configuration;
import org.cunframework.sc.map4j.support.handle.PipedHttpHandler;
import org.cunframework.sc.map4j.support.handle.RequestContext;
import org.cunframework.sc.map4j.util.HttpStatus;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 拼装脚本
 * 
 * <p/>
 * <p>User: weiq
 * <p>Date: 2015年11月5日 下午5:43:10 
 * <p>Version: 1.0
 */
public class MapScriptHandler extends PipedHttpHandler{
    private static final Logger LOGGER = LoggerFactory.getLogger(MapScriptHandler.class);
    
    public MapScriptHandler() {
        super();
    }

    @Override
    public void handleRequest(HttpServerExchange exchange, RequestContext context) throws Exception {
        String dev = context.getParameter(RequestContext.DEVELOP);
        String prefix = exchange.getRequestScheme()+"://"
                + exchange.getHostAndPort() + "/";
        
        if("1".equals(dev)){ //如果是开发版
            exchange.getResponseSender().send(getDevelopApi(prefix));
        }else{
            exchange.getResponseSender().send(getPublishApi(prefix));
        }
        
        exchange.endExchange();
    }
    
    private String getPublishApi(String prefix){
        String js = Configuration.JS_TINY_COMPRESS_FILE;
        if(StringUtils.isBlank(js)){
            LOGGER.error("JS_TINY_COMPRESS_FILE is null");
            return "alert('发布版JS加载失败');";
        }
        return js;
    }
    
    private String getDevelopApi(String prefix){
        String js = Configuration.JS_TINY_SOURCE_FILE;
        if(StringUtils.isBlank(js)){
            LOGGER.error("JS_TINY_SOURCE_FILE is null");
            return "alert('开发版JS加载失败');";
        }
        return js;
    }
}
