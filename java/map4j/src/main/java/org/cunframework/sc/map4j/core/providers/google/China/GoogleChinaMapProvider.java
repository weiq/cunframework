/**
 * Copyright (c) 2012-2015 https://github.com/weiq
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 */
package org.cunframework.sc.map4j.core.providers.google.China;

import java.text.MessageFormat;

import org.cunframework.sc.map4j.App;
import org.cunframework.sc.map4j.core.GMaps;
import org.cunframework.sc.map4j.core.GPoint;
import org.cunframework.sc.map4j.core.internals.PureImage;
import org.cunframework.sc.map4j.core.internals.impl.GMapImage;
import org.cunframework.sc.map4j.core.providers.google.GoogleMapProviderBase;
import org.cunframework.sc.map4j.support.handle.map.MapDownloadsHandler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * GoogleChinaMap provider
 */
public class GoogleChinaMapProvider extends GoogleMapProviderBase {
    private static final Logger LOGGER = LoggerFactory.getLogger(MapDownloadsHandler.class);
    
    public static GoogleChinaMapProvider Instance;

    private GoogleChinaMapProvider() {
        RefererUrl = String.format("http://ditu.%1$s/", ServerChina);
    }

    static {
        Instance = new GoogleChinaMapProvider();
    }

    public String Version = "m@298";

    private final String name = "GoogleChinaMap";

    @Override
    public String getName() {
        return name;
    }

    @Override
    public PureImage GetTileImage(GPoint pos, int zoom) {
        String url = MakeTileImageUrl(pos, zoom, "");

        return GetTileImageUsingHttp(url);
    }

    private String MakeTileImageUrl(GPoint pos, int zoom, String language) {
        String[] rstr = GetSecureWords(pos, "", "");

        return MessageFormat
                .format(UrlFormat, UrlFormatServer, GetServerNum(pos, 4),
                        UrlFormatRequest, Version, ChinaLanguage, pos.getX()
                                + "", rstr[0], pos.getY() + "", zoom, rstr[1],
                        ServerChina);
    }
    
    @Override
    public String GetTileImageUrl(GPoint pos, int zoom) {
        return MakeTileImageUrl(pos, zoom, "");
    }

    private static final String ChinaLanguage = "zh-CN";
    private static final String UrlFormatServer = "mt";
    private static final String UrlFormatRequest = "vt";
    private static final String UrlFormat = "http://{0}{1}.{10}/{2}/lyrs={3}&hl={4}&gl=cn&x={5}{6}&y={7}&z={8}&s={9}";

    @Override
    public void CacheImage(int zoom, GPoint point, byte[] data) {
      GMapImage image = (GMapImage)this.GetTileImageUsingBytes(data);
      long x = point.getX();
      long y = point.getY();
      String path = GMaps.Instance.tilePath+"/google/road/L" + zoom + "//R" + y + "//";
      String filePath = path + "C" + x + ".png";
      image.Save(filePath, "png");
      LOGGER.info("生成缓存图片 位置在："+filePath);
    }
}