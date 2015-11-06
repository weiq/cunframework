package org.cunframework.modules.utils.asynchttp;

import org.cunframework.modules.utils.asynchttp.utility.StreamUtility;

import java.io.IOException;
import java.io.InputStream;
import java.net.CookieStore;
import java.net.URL;

/**
 * desc   : 字节型数据处理类
 */
public abstract class BinaryResponseHandler implements ResponseCallback {

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
		onResponse(data,url,args);
	}

    @Override
    public void onUncatchedError(Throwable exp, Object... args) {
    }

	public abstract void onResponse(byte[] data,URL url, Object... args);
	
}
