/**
 * Copyright (c) 2012-2015 https://github.com/weiq
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 */
package org.cunframework.sc.map4j.core.internals;

import java.util.Map;

import org.cunframework.modules.utils.JSONHelper;
import org.cunframework.sc.map4j.core.GPoint;
import org.cunframework.sc.map4j.core.providers.GMapProvider;

import com.google.common.collect.Maps;

/**
 * 瓦片状态
 * 
 * <p/>
 * <p>User: weiq
 * <p>Date: 2015年10月15日 下午1:13:54 
 * <p>Version: 1.0
 */
public class TileStatus {
    public TileStatus() {
    }
    
    public TileStatus(GMapProvider provider, int currentZoom, int tileNum, int tileCount) {
        this.currentZoom = currentZoom;
        this.provider = provider;
        this.tileNum = tileNum;
        this.tileCount = tileCount;
    }
    //当前缩放级别
    private int currentZoom;
    //provider
    private GMapProvider provider;
    //这个级别下,当前下载了几块瓦片
    private int tileNum;
    //这个级别下的瓦片总数
    private int tileCount;
    
    /**
     * 这个级别下的瓦片下载数量加1
     */
    public void addTileNum(){
        this.tileNum++;
    }
    
    public int getCurrentZoom() {
        return currentZoom;
    }
    public GMapProvider getProvider() {
        return provider;
    }
    public int getTileNum() {
        return tileNum;
    }
    public int getTileCount() {
        return tileCount;
    }
    public void setCurrentZoom(int currentZoom) {
        this.currentZoom = currentZoom;
    }
    public void setProvider(GMapProvider provider) {
        this.provider = provider;
    }
    public void setTileNum(int tileNum) {
        this.tileNum = tileNum;
    }
    public void setTileCount(int tileCount) {
        this.tileCount = tileCount;
    }
    
    @Override
    public String toString() {
        Map map = Maps.newHashMap();
        map.put("currentZoom", this.currentZoom);
        map.put("tileNum", this.tileNum);
        map.put("tileCount", this.tileCount);
        
        return JSONHelper.toJSONString(map);
    }
}