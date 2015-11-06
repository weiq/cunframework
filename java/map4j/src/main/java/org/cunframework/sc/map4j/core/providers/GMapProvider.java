package org.cunframework.sc.map4j.core.providers;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.io.IOUtils;
import org.cunframework.sc.map4j.core.GPoint;
import org.cunframework.sc.map4j.core.PureProjection;
import org.cunframework.sc.map4j.core.RectLatLng;
import org.cunframework.sc.map4j.core.internals.PureImage;
import org.cunframework.sc.map4j.core.internals.PureImageProxy;
import org.cunframework.sc.map4j.core.internals.impl.GMapImageProxy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 每个map provider的基类
 */
public abstract class GMapProvider {
    private static final Logger LOGGER = LoggerFactory.getLogger(GMapProvider.class);
    /**
     * provider name
     */
    public abstract String getName();

    /**
     * provider projection
     */
    public abstract PureProjection getProjection();

    /**
     * provider overlays
     */
    public abstract GMapProvider[] getOverlays();
    
    public String Copyright = "";
    
    /**
     * 加载前初始化内容,可以放入版本相关内容
     */
    public void OnInitialized() {
    }

    /**
     * 使用实现的provider得到瓦片
     * 
     * @param pos
     * @param zoom
     * @return
     */
    public abstract PureImage GetTileImage(GPoint pos, int zoom);
    
    public abstract String GetTileImageUrl(GPoint pos, int zoom);
    
    public abstract void CacheImage(int zoom, GPoint point, byte[] data);

    private static final List<GMapProvider> MapProviders = new ArrayList<GMapProvider>();

    protected GMapProvider() {
        MapProviders.add(this);
    }

    private boolean isInitialized = false;

    /**
     * provider 是否初始化过了
     */
    public final boolean getIsInitialized() {
        return isInitialized;
    }

    public final void setIsInitialized(boolean value) {
        isInitialized = value;
    }

    /**
     * 地图区域
     */
    public RectLatLng Area;

    /**
     * 最小缩放级别
     */
    public int MinZoom;

    /**
     * 最大缩放级别
     */
    public Integer MaxZoom = 17;

    /**
     * provider 连接超时
     */
    public static int TimeoutMs = 5 * 1000;

    /**
     * 设置或取得参考的HTTP头的值
     */
    public String RefererUrl = "";

    /**
     * 如果瓦片从 BottomLeft 开始时为真, WMS-C
     */
    public boolean InvertedAxisY = false;

    /**
     * 图像管理内部代理
     */
    public static PureImageProxy TileImageProxy = new GMapImageProxy();
    
    public String tilePath;

    protected final PureImage GetTileImageUsingHttp(String url) {
        PureImage ret = null;
        InputStream is = null;
        try {
            URL imageURL = new URL(url);
            is = imageURL.openStream();
            byte[] imageBytes = IOUtils.toByteArray(is);
            ret = TileImageProxy.FromArray(imageBytes);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            IOUtils.closeQuietly(is);
        }

        return ret;
    }
    
    public final PureImage GetTileImageUsingBytes(byte[] data){
        return TileImageProxy.FromArray(data);
    }
    
    protected final String GetContentUsingHttp(String url) {
        return null;
    }

    protected PureImage GetTileImageFromArray(byte[] data) {
        return TileImageProxy.FromArray(data);
    }

    protected static int GetServerNum(GPoint pos, int max) {
        return (int) (pos.getX() + 2 * pos.getY()) % max;
    }

    @Override
    public String toString() {
        return getName();
    }
}