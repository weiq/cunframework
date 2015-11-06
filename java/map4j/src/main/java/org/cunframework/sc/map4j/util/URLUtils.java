package org.cunframework.sc.map4j.util;

import io.undertow.server.HttpServerExchange;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Arrays;
import java.util.Date;
import java.util.Deque;

import org.cunframework.sc.map4j.support.handle.RequestContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 *
 */
public class URLUtils {
    private static final Logger LOGGER = LoggerFactory.getLogger(URLUtils.class);
    

    /**
     * given string /ciao/this/has/trailings///// returns
     * /ciao/this/has/trailings
     *
     * @param s
     * @return the string s without the trailing slashes
     */
    static public String removeTrailingSlashes(String s) {
        if (s == null || s.length() < 2) {
            return s;
        }

        if (s.trim().charAt(s.length() - 1) == '/') {
            return removeTrailingSlashes(s.substring(0, s.length() - 1));
        } else {
            return s.trim();
        }
    }

    /**
     * decode the percent encoded query string
     *
     * @param qs
     * @return the undecoded string
     */
    static public String decodeQueryString(String qs) {
        try {
            return URLDecoder.decode(qs.replace("+", "%2B"), "UTF-8").replace("%2B", "+");
        } catch (UnsupportedEncodingException ex) {
            return null;
        }
    }

    /**
     *
     * @param path
     * @return
     */
    static public String getParentPath(String path) {
        if (path == null || path.isEmpty() || path.equals("/")) {
            return path;
        }

        int lastSlashPos = path.lastIndexOf('/');

        if (lastSlashPos > 0) {
            return path.substring(0, lastSlashPos); //strip off the slash
        } else if (lastSlashPos == 0) {
            return "/";
        } else {
            return ""; //we expect people to add  + "/somedir on their own
        }
    }

    /**
     *
     * @param exchange
     * @return
     */
    static public String getPrefixUrl(HttpServerExchange exchange) {
        return exchange.getRequestURL().replaceAll(exchange.getRelativePath(), "");
    }

    /**
     *
     * @param exchange
     * @param paramsToRemove
     * @return
     */
    public static String getQueryStringRemovingParams(HttpServerExchange exchange, String... paramsToRemove) {
        String ret = exchange.getQueryString();

        if (ret == null || ret.isEmpty() || paramsToRemove == null) {
            return ret;
        }

        for (String key : paramsToRemove) {
            Deque<String> values = exchange.getQueryParameters().get(key);

            if (values != null) {
                for (String value : values) {
                    ret = ret.replaceAll(key + "=" + value + "&", "");
                    ret = ret.replaceAll(key + "=" + value + "$", "");
                }
            }
        }

        return ret;
    }

    public static Number getIdAsNumber(String id) throws IllegalArgumentException {
        try {
            return Integer.parseInt(id, 10);
        } catch (NumberFormatException nfe) {
            try {
                return Long.parseLong(id, 10);
            } catch (NumberFormatException nfe2) {
                try {
                    return Float.parseFloat(id);
                } catch (NumberFormatException nfe3) {
                    try {
                        return Double.parseDouble(id);
                    } catch (NumberFormatException nfe4) {
                        try {
                            return Float.parseFloat(id);
                        } catch (NumberFormatException nfe5) {
                            throw new IllegalArgumentException("The id is not a valid number " + id, nfe);
                        }
                    }
                }
            }
        }
    }

    public static Date getIdAsDate(String id) throws IllegalArgumentException {
        Date ret;

        try {
            Long n = Long.parseLong(id, 10);

            ret = new Date(n);
        } catch (NumberFormatException nfe) {
            throw new IllegalArgumentException("The id is not a valid date (number of milliseconds since the epoch) " + id, nfe);
        }
        
        return ret;
    }

    private URLUtils() {
    }
}
