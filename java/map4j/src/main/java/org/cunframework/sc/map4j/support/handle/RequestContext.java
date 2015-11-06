package org.cunframework.sc.map4j.support.handle;

import io.undertow.server.HttpServerExchange;
import io.undertow.util.HttpString;
import io.undertow.util.Methods;

import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Deque;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.cunframework.modules.utils.URLUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 *
 */
public class RequestContext {
    
    private static final Logger LOGGER = LoggerFactory.getLogger(RequestContext.class);
    
    public enum TYPE {
        ERROR,
        ROOT,
        FILE,
        FILE_BINARY,
        MAPAPI,
        MAPSCRIPT,
        MAPDOWNLOAD
    };

    public enum METHOD {
        GET,
        POST,
        PUT,
        DELETE,
        PATCH,
        OPTIONS,
        OTHER
    };
    
    /**
     * Get 请求参数
     */
    private Map<String, Deque<String>> parameters;

    public static final String PATCH = "PATCH";
    public static final String MAPKEY = "map";
    public static final String APIKEY = "api";
    public static final String SCRIPTKEY = "getScript";
    public static final String DOWNLOADKEY = "download";
    
    
    public static final String VERSION = "ver"; //JS 版本
    public static final String DEVELOP = "dev"; //是否是开发版，开发版不会使用压缩的JS

    private final String whereUri;
    private final String whatUri;

    private final TYPE type;
    private final METHOD method;
    private final String[] pathTokens;

    private File file;

    private final List<String> warnings = new ArrayList<>();

    private String unmappedRequestUri = null;
    private String mappedRequestUri = null;

    /**
     *
     * @param exchange the url rewriting feature is implemented by the whatUri
     * and whereUri parameters
     *
     * the exchange request path is rewritten replacing the whereUri string with
     * the whatUri string the special whatUri value * means any resource: the
     * whereUri is replaced with /
     *
     * example 1
     *
     * whatUri = /mydb/mycollection whereUri = /
     *
     * then the requestPath / is rewritten to /mydb/mycollection
     *
     * example 2
     *
     * whatUri = * whereUri = /data
     *
     * then the requestPath /data is rewritten to /
     *
     * @param whereUri the uri to map to
     * @param whatUri the uri to map
     */
    public RequestContext(HttpServerExchange exchange, String whereUri, String whatUri) {
        this.whereUri = URLUtils.removeTrailingSlashes(whereUri);
        this.whatUri = whatUri;

        this.unmappedRequestUri = exchange.getRequestPath();
        this.mappedRequestUri = unmapUri(exchange.getRequestPath());

        // "/db/collection/document" --> { "", "mappedDbName", "collection", "document" }
        this.pathTokens = this.mappedRequestUri.split("/");
        this.type = selectRequestType(pathTokens);
        this.method = selectRequestMethod(exchange.getRequestMethod());
    }
    
    /**
     * 取得请求参数对应值
     * @param key
     * @return
     */
    public String getParameter(String key){
        String value = "";
        if(StringUtils.isBlank(key)){
            LOGGER.error("key is null");
        }
        Deque<String> values = this.parameters.get(key);
        if (values != null && !values.isEmpty()) {
            value = values.getFirst();
        }
        return value;
    }

    protected static METHOD selectRequestMethod(HttpString _method) {
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
    
    protected static TYPE selectRequestType(String[] pathTokens) {
        TYPE type = null;
        if (pathTokens.length == 2) {
            if (pathTokens[1].equalsIgnoreCase(APIKEY)) {
                type = TYPE.MAPAPI;
            } else if (pathTokens[1].equalsIgnoreCase(SCRIPTKEY)) {
                type = TYPE.MAPSCRIPT;
            } else if (pathTokens[1].equalsIgnoreCase(DOWNLOADKEY)){
                type = TYPE.MAPDOWNLOAD;
            }
        }
        return type;
    }

    /**
     * given a mapped uri (/some/mapping/coll) returns the canonical uri
     * (/db/coll) URLs are mapped to mongodb resources by using the mongo-mounts
     * configuration properties
     *
     * @param mappedUri
     * @return
     */
    public final String unmapUri(String mappedUri) {
        String ret = URLUtils.removeTrailingSlashes(mappedUri);

        if (whatUri.equals("*")) {
            if (!this.whereUri.equals("/")) {
                ret = ret.replaceFirst("^" + this.whereUri, "");
            }
        } else {
            ret = URLUtils.removeTrailingSlashes(ret.replaceFirst("^" + this.whereUri, this.whatUri));
        }

        if (ret.isEmpty()) {
            ret = "/";
        }

        return ret;
    }

    /**
     * given a canonical uri (/db/coll) returns the mapped uri (/db/coll)
     * relative to this context URLs are mapped to mongodb resources by using
     * the mongo-mounts configuration properties
     *
     * @param unmappedUri
     * @return
     */
    public final String mapUri(String unmappedUri) {
        String ret = URLUtils.removeTrailingSlashes(unmappedUri);

        if (whatUri.equals("*")) {
            if (!this.whereUri.equals("/")) {
                return this.whereUri + unmappedUri;
            }
        } else {
            ret = URLUtils.removeTrailingSlashes(ret.replaceFirst("^" + this.whatUri, this.whereUri));
        }

        if (ret.isEmpty()) {
            ret = "/";
        }

        return ret;
    }

    /**
     *
     * @return method
     */
    public METHOD getMethod() {
        return method;
    }

    /**
     * @return the whereUri
     */
    public String getUriPrefix() {
        return whereUri;
    }

    /**
     * @return the whatUri
     */
    public String getMappingUri() {
        return whatUri;
    }

    /**
     * @return the warnings
     */
    public List<String> getWarnings() {
        return warnings;
    }

    /**
     * @param warning
     */
    public void addWarning(String warning) {
        warnings.add(warning);
    }

    /**
     * @return the mappedRequestUri
     */
    public String getMappedRequestUri() {
        return mappedRequestUri;
    }

    /**
     * @return the unmappedRequestUri
     */
    public String getUnmappedRequestUri() {
        return unmappedRequestUri;
    }

    /**
     *
     * @param index
     * @return pathTokens[index] if pathTokens.length > index, else null
     */
    private String getPathTokenAt(int index) {
        return pathTokens.length > index ? pathTokens[index] : null;
    }

    /**
     * @return the file
     */
    public File getFile() {
        return file;
    }

    /**
     * @param file the file to set
     */
    public void setFile(File file) {
        this.file = file;
    }

    public TYPE getType() {
        return type;
    }

    public Map<String, Deque<String>> getParameters() {
        return parameters;
    }

    public void setParameters(Map<String, Deque<String>> parameters) {
        this.parameters = parameters;
    }
}
