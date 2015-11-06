/*
 * JBoss, Home of Professional Open Source.
 * Copyright 2014 Red Hat, Inc., and individual contributors
 * as indicated by the @author tags.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

package org.cunframework.sc.map4j;

import io.undertow.Handlers;
import io.undertow.Undertow;
import io.undertow.io.Sender;
import io.undertow.server.DefaultResponseListener;
import io.undertow.server.HttpHandler;
import io.undertow.server.HttpServerExchange;
import io.undertow.server.handlers.ResponseCodeHandler;
import io.undertow.server.handlers.error.FileErrorPageHandler;
import io.undertow.server.handlers.error.SimpleErrorPageHandler;
import io.undertow.server.handlers.resource.FileResourceManager;
import io.undertow.server.handlers.resource.ResourceHandler;
import io.undertow.util.Headers;
import io.undertow.util.StatusCodes;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import javax.imageio.ImageIO;

import org.cunframework.sc.map4j.util.HttpStatus;
import org.cunframework.sc.map4j.util.RequestMethod;
import org.cunframework.sc.map4j.util.ResponseHelper;
import org.cunframework.sc.map4j.util.RequestMethod.METHOD;

import static io.undertow.Handlers.resource;

/**
 */
public class FileServer {

    public static void main(final String[] args) {
        FileErrorPageHandler eh = new FileErrorPageHandler(new File("D:/logs/orcs.log"));
        
        SimpleErrorPageHandler ea = new SimpleErrorPageHandler();
        
        BlankImageHandler bh = new BlankImageHandler();
        
        ResourceHandler rh = new ResourceHandler(
                new FileResourceManager(new File(System.getProperty("user.home")), 100),
                bh);
        
        Undertow server = Undertow.builder()
                .addHttpListener(8888, "localhost")
                .setHandler(rh.setDirectoryListingEnabled(true))
                .build();
        server.start();
    }
    
}

class BlankImageHandler implements HttpHandler {
    
    public BlankImageHandler() {
    }

    @Override
    public void handleRequest(HttpServerExchange exchange) throws Exception {
//        final String errorPage = "<html><head><title>Error</title></head><body>" + exchange.getResponseCode() + " - " + StatusCodes.getReason(exchange.getResponseCode()) + "</body></html>";
//        exchange.getResponseHeaders().put(Headers.CONTENT_LENGTH, "" + errorPage.length());
//        exchange.getResponseHeaders().put(Headers.CONTENT_TYPE, "text/html");
//        Sender sender = exchange.getResponseSender();
//        sender.send(errorPage);
        exchange.startBlocking();
        //exchange.getResponseHeaders().put(Headers.CONTENT_TYPE, "image/jpeg");
        File f = new File("D:\\360downloads\\wpcache\\internetcache\\286067_205.jpg");
        BufferedImage bi = ImageIO.read(f);
        OutputStream out = exchange.getOutputStream();
        ImageIO.write(bi, "jpg", out);
        out.close();
        
        
    }
}
