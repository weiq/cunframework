/**
 * Copyright (c) 2012-2015 https://github.com/weiq
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 */
package org.cunframework.sc.map4j.core.providers.baidu;

import java.text.MessageFormat;

import org.cunframework.sc.map4j.core.GMaps;
import org.cunframework.sc.map4j.core.GPoint;
import org.cunframework.sc.map4j.core.internals.PureImage;
import org.cunframework.sc.map4j.core.internals.impl.GMapImage;

/**
 * 百度卫星地图
 * <p/>
 * <p>User: weiq
 * <p>Date: 2015年10月19日 上午9:34:16 
 * <p>Version: 1.0
 */
public class BaiduSatelliteMapProvider extends BaiduMapProviderBase{

    @Override
    public String getName()
    {
        return name;
    }

    @Override
    public PureImage GetTileImage(GPoint pos, int zoom)
    {
        String url = MakeTileImageUrl(pos, zoom, "");

        return GetTileImageUsingHttp(url);
    }

    private String MakeTileImageUrl(GPoint pos, int zoom, String language)
    {
        
        zoom = zoom - 1;
        double offsetX = Math.pow(2, zoom);
        double offsetY = offsetX - 1;

        double numX = pos.getX() - offsetX;
        double numY = -pos.getY() + offsetY;

        zoom = zoom + 1;
        String x = (numX+"").replace("-", "M"); //负数'-',替换为M
        String y = (numY+"").replace("-", "M"); //负数'-',替换为M

        return MessageFormat.format(UrlFormat, (GetServerNum(pos, serverNum) + 1), x, y, zoom, V, TYPE, FM);
    }
    
    @Override
    public String GetTileImageUrl(GPoint pos, int zoom) {
        return MakeTileImageUrl(pos, zoom, "");
    }
    
    @Override
    public void CacheImage(int zoom, GPoint point, byte[] data) {
      GMapImage image = (GMapImage)this.GetTileImageUsingBytes(data);
        
      long x = point.getX();
      long y = point.getY();
      String path = GMaps.Instance.tilePath+"/baidu/sate/L" + zoom + "//R" + y + "//";
      String filePath = path + "C" + x + ".png";
      
      image.Save(filePath, "png");
    }
    
    private final String name = "BaiduSatelliteMap";
    private static final String V = "009";
    private static final String TYPE = "sate";
    private static final String FM = "46";
    private static final String UrlFormat = "http://shangetu{0}.map.bdimg.com/it/u=x={1};y={2};z={3};v={4};type={5}&fm={6}&udt=20140929";
}
