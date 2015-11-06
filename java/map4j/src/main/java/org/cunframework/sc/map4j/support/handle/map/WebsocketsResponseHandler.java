package org.cunframework.sc.map4j.support.handle.map;

import org.cunframework.modules.utils.asynchttp.ResponseCallback;
import org.cunframework.modules.utils.asynchttp.support.ParamsWrapper;
import org.cunframework.modules.utils.asynchttp.utility.StreamUtility;
import org.cunframework.sc.map4j.core.GPoint;
import org.cunframework.sc.map4j.core.internals.TileStatus;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import io.undertow.websockets.core.WebSocketChannel;

import java.io.IOException;
import java.io.InputStream;
import java.net.CookieStore;
import java.net.URL;

/**
 * Websockets
 */
public abstract class WebsocketsResponseHandler implements ResponseCallback {
    private static final Logger LOGGER = LoggerFactory.getLogger(MapDownloadsHandler.class);
    
    protected CookieStore cookieStore;

	@Override
	final public void onResponse(CookieStore cookieStore,InputStream response,URL url, Object... args) {
        this.cookieStore = cookieStore;
		byte[] data = null;
		try {
			data = StreamUtility.convertToByteArray(response);
		} catch (IOException exp) {
			exp.printStackTrace();
			onStreamError(exp);
        }catch (Throwable exp) {
            exp.printStackTrace();
            onUncatchedError(exp);
        } finally{
			StreamUtility.closeSilently(response);
		}
		onResponse(data,url,(TileStatus)args[0],(WebSocketChannel)args[1], (GPoint)args[2]);
	}
	
	public abstract void onResponse(byte[] data, URL url, TileStatus ts, WebSocketChannel channel, GPoint point);

    @Override
    final public void onSubmit(URL url, ParamsWrapper params, Object... args) {
        onSubmit(url, (TileStatus)args[0], (WebSocketChannel)args[1]);
    }
    
    public abstract void onSubmit(URL url, TileStatus ts, WebSocketChannel channel);

    @Override
    public void onUncatchedError(Throwable exp, Object... args) {
        LOGGER.error(exp.getMessage(),exp);
    }
    
    @Override
    public void onConnectError(IOException exp, Object... args) {
        LOGGER.error(exp.getMessage(),exp);
    }

    @Override
    public void onStreamError(IOException exp, Object... args) {
        LOGGER.error(exp.getMessage(),exp);
    }
	
}
