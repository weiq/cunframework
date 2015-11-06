package org.cunframework.sc.map4j.support.handle.security;

import org.cunframework.sc.map4j.support.handle.PipedHttpHandler;
import org.cunframework.sc.map4j.support.handle.RequestContext;

import io.undertow.server.HttpHandler;
import io.undertow.server.HttpServerExchange;
import io.undertow.util.Headers;
import static io.undertow.util.Headers.LOCATION_STRING;
import static io.undertow.util.Headers.ORIGIN;
import io.undertow.util.HttpString;
import static java.lang.Boolean.TRUE;

/**
 * The Access-Control-Expose-Headers header indicates which headers are safe to
 * expose to the API of a CORS API specification.
 * <p/>
 * <p>User: weiq
 * <p>Date: 2015年11月5日 下午5:43:50 
 * <p>Version: 1.0
 */
public class CORSHandler extends PipedHttpHandler {
    
    public static final HttpString ACCESS_CONTROL_EXPOSE_HEADERS = HttpString.tryFromString("Access-Control-Expose-Headers");
    public static final HttpString ACCESS_CONTROL_ALLOW_CREDENTIAL = HttpString.tryFromString("Access-Control-Allow-Credentials");
    public static final HttpString ACCESS_CONTROL_ALLOW_ORIGIN = HttpString.tryFromString("Access-Control-Allow-Origin");

    public static final HttpString AUTH_TOKEN_HEADER = HttpString.tryFromString("Auth-Token");
    public static final HttpString AUTH_TOKEN_VALID_HEADER = HttpString.tryFromString("Auth-Token-Valid-Until");
    public static final HttpString AUTH_TOKEN_LOCATION_HEADER = HttpString.tryFromString("Auth-Token-Location");
    
    public static final String ALL_ORIGINS = "*";
    private final HttpHandler noPipedNext;

    /**
     * Creates a new instance of GetRootHandler
     *
     * @param next
     */
    public CORSHandler(PipedHttpHandler next) {
        super(next);
        this.noPipedNext = null;
    }

    /**
     * Creates a new instance of GetRootHandler
     *
     * @param next
     */
    public CORSHandler(HttpHandler next) {
        super(null);
        this.noPipedNext = next;
    }

    /**
     *
     * @param exchange
     * @param context
     * @throws Exception
     */
    @Override
    public void handleRequest(HttpServerExchange exchange, RequestContext context) throws Exception {
        injectAccessControlAllowHeaders(new HeadersManager(exchange));

        if (noPipedNext != null) {
            noPipedNext.handleRequest(exchange);
        } else {
            getNext().handleRequest(exchange, context);
        }
    }

    private void injectAccessControlAllowHeaders(HeadersManager headers) {

        if (headers.isRequestHeaderSet(ORIGIN)) {
            headers.addResponseHeader(ACCESS_CONTROL_ALLOW_ORIGIN, headers.getRequestHeader(ORIGIN).getFirst());
        } else {
            headers.addResponseHeader(ACCESS_CONTROL_ALLOW_ORIGIN, ALL_ORIGINS);
        }

        headers.addResponseHeader(ACCESS_CONTROL_ALLOW_CREDENTIAL, TRUE);

        headers.addResponseHeader(ACCESS_CONTROL_EXPOSE_HEADERS, LOCATION_STRING);
        headers.addResponseHeader(ACCESS_CONTROL_EXPOSE_HEADERS,
                LOCATION_STRING + ", "
                + Headers.ETAG + ", "
                + AUTH_TOKEN_HEADER.toString() + ", "
                + AUTH_TOKEN_VALID_HEADER.toString() + ", "
                + AUTH_TOKEN_LOCATION_HEADER.toString());
    }
}
