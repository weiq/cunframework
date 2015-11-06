/**
 * Copyright (c) 2012-2015 https://github.com/weiq
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 */
package org.cunframework.sc.map4j.core.internals;

import java.util.List;

import org.cunframework.sc.map4j.core.PointLatLng;

/**
 * 地图下载信息对象
 * 
 * <p/>
 * <p>User: weiq
 * <p>Date: 2015年10月14日 下午3:00:05 
 * <p>Version: 1.0
 */
public class DownloadInfo {
    private int fromZoom;
    private int toZoom;
    private List<PointLatLng> latLngs;
    private String providerName;
    
    public int getFromZoom() {
        return fromZoom;
    }
    public int getToZoom() {
        return toZoom;
    }
    public List<PointLatLng> getLatLngs() {
        return latLngs;
    }
    public void setFromZoom(int fromZoom) {
        this.fromZoom = fromZoom;
    }
    public void setToZoom(int toZoom) {
        this.toZoom = toZoom;
    }
    public void setLatLngs(List<PointLatLng> latLngs) {
        this.latLngs = latLngs;
    }
    public String getProviderName() {
        return providerName;
    }
    public void setProviderName(String providerName) {
        this.providerName = providerName;
    }
}
