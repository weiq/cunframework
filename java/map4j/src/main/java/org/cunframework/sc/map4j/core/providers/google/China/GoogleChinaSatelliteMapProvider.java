/**
 * Copyright (c) 2012-2015 https://github.com/weiq
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 */
package org.cunframework.sc.map4j.core.providers.google.China;

import java.text.MessageFormat;

import org.cunframework.sc.map4j.core.GMaps;
import org.cunframework.sc.map4j.core.GPoint;
import org.cunframework.sc.map4j.core.internals.PureImage;
import org.cunframework.sc.map4j.core.internals.impl.GMapImage;
import org.cunframework.sc.map4j.core.providers.google.GoogleMapProviderBase;

/**
 * GoogleChinaSatelliteMap provider
 */
public class GoogleChinaSatelliteMapProvider extends GoogleMapProviderBase {
    public static GoogleChinaSatelliteMapProvider Instance;

    private GoogleChinaSatelliteMapProvider() {
        RefererUrl = String.format("http://ditu.%1$s/", ServerChina);
    }

    static {
        Instance = new GoogleChinaSatelliteMapProvider();
    }

    public String Version = "s@186";

    private final String name = "GoogleChinaSatelliteMap";

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

        return MessageFormat.format(UrlFormat, UrlFormatServer,
                GetServerNum(pos, 4), UrlFormatRequest, Version, pos.getX()
                        + "", rstr[0], pos.getY() + "", zoom, rstr[1], ServerChina);
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
      String path = GMaps.Instance.tilePath+"/google/sate/L" + zoom + "//R" + y + "//";
      String filePath = path + "C" + x + ".png";
      
      image.Save(filePath, "png");
    }

    private static final String UrlFormatServer = "mt";
    private static final String UrlFormatRequest = "vt";
    private static final String UrlFormat = "http://{0}{1}.{9}/{2}/lyrs={3}&gl=cn&x={4}{5}&y={6}&z={7}&s={8}";
}