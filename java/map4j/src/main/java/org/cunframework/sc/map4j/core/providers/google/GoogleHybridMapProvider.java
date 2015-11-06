/**
 * Copyright (c) 2012-2015 https://github.com/weiq
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 */
package org.cunframework.sc.map4j.core.providers.google;

import java.text.MessageFormat;

import org.cunframework.sc.map4j.core.GMaps;
import org.cunframework.sc.map4j.core.GPoint;
import org.cunframework.sc.map4j.core.internals.PureImage;
import org.cunframework.sc.map4j.core.internals.impl.GMapImage;
import org.cunframework.sc.map4j.core.providers.GMapProvider;

/**
 * GoogleHybridMap provider
 */
public class GoogleHybridMapProvider extends GoogleMapProviderBase {
    public static GoogleHybridMapProvider Instance;

    private GoogleHybridMapProvider() {
    }

    static {
        Instance = new GoogleHybridMapProvider();
    }

    public String Version = "h@298000000";

    private final String name = "GoogleHybridMap";

    @Override
    public String getName() {
        return name;
    }

    private GMapProvider[] overlays;

    @Override
    public GMapProvider[] getOverlays() {
        if (overlays == null) {
            overlays = new GMapProvider[] {
                    GoogleSatelliteMapProvider.Instance, this };
        }
        return overlays;
    }

    @Override
    public PureImage GetTileImage(GPoint pos, int zoom) {
        String url = MakeTileImageUrl(pos, zoom, "");

        return GetTileImageUsingHttp(url);
    }

    private String MakeTileImageUrl(GPoint pos, int zoom, String language) {
        String[] rstr = GetSecureWords(pos, "", "");

        return MessageFormat.format(UrlFormat, UrlFormatServer,
                GetServerNum(pos, 4), UrlFormatRequest, Version, language,
                pos.getX() + "", rstr[0], pos.getY() + "", zoom, rstr[1], Server);
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
      String path = GMaps.Instance.tilePath+"/google/hybrid/L" + zoom + "//R" + y + "//";
      String filePath = path + "C" + x + ".png";
      
      image.Save(filePath, "png");
    }

    private static final String UrlFormatServer = "mt";
    private static final String UrlFormatRequest = "vt";
    private static final String UrlFormat = "http://{0}{1}.{10}/{2}/lyrs={3}&hl={4}&x={5}{6}&y={7}&z={8}&s={9}";
}