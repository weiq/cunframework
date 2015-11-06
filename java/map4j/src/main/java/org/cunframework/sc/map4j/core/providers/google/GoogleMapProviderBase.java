/**
 * Copyright (c) 2012-2015 https://github.com/weiq
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 */
package org.cunframework.sc.map4j.core.providers.google;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.lang3.NotImplementedException;
import org.apache.commons.lang3.StringUtils;
import org.cunframework.modules.utils.DateTimeUtil;
import org.cunframework.sc.map4j.core.GPoint;
import org.cunframework.sc.map4j.core.PointLatLng;
import org.cunframework.sc.map4j.core.PureProjection;
import org.cunframework.sc.map4j.core.internals.PureImage;
import org.cunframework.sc.map4j.core.projections.MercatorProjection;
import org.cunframework.sc.map4j.core.providers.GMapProvider;
import org.cunframework.sc.map4j.core.providers.GMapProviders;

public abstract class GoogleMapProviderBase extends GMapProvider {
    public GoogleMapProviderBase() {
        MaxZoom = null;
        RefererUrl = String.format("http://maps.%1$s/", Server);
        Copyright = String
                .format("©%1$s Google - Map data ©%1$s Tele Atlas, Imagery ©%1$s TerraMetrics",
                        DateTimeUtil.getDateExtract(new Date(), "y"));
    }

    public final String ServerAPIs = "googleapis.com";
    public final String Server = "google.com";
    public final String ServerChina = "google.cn";
    public final String ServerKorea = "gmaptiles.co.kr";
    public final String ServerKoreaKr = "google.co.kr";

    public String SecureWord = "Galileo";

    /**
     * google map api key
     */
    public String ApiKey = "";

    @Override
    public PureProjection getProjection() {
        return MercatorProjection.Instance;
    }

    private GMapProvider[] overlays;

    @Override
    public GMapProvider[] getOverlays() {
        if (overlays == null) {
            overlays = new GMapProvider[] { this };
        }
        return overlays;
    }

    @Override
    public PureImage GetTileImage(GPoint pos, int zoom) {
        throw new NotImplementedException("");
    }

    public boolean TryCorrectVersion = true;
    private static boolean init = false;

    @Override
    public void OnInitialized() {
        if (!init && TryCorrectVersion) {
            String url = String
                    .format("https://maps.%1$s/maps/api/js?client=google-maps-lite&amp;libraries=search&amp;language=en&amp;region=",
                            ServerAPIs);
            String html = "";

            html = GetContentUsingHttp(url);

            if (!StringUtils.isBlank(html)) {
                Pattern reg = Pattern.compile(String.format(
                        "https?://mts?\\d.%1$s/vt\\?lyrs=m@(\\d*)", Server));
                Matcher mat = reg.matcher(html);
                if (mat.find()) {
                    int count = mat.groupCount();
                    if (count > 0) {
                        String ver = String.format("m@%1$s", mat.group(1));
                        String old = GMapProviders.Instance.GoogleMap.Version;

                        GMapProviders.Instance.GoogleMap.Version = ver;
                        GMapProviders.Instance.GoogleChinaMap.Version = ver;
                    }
                }

                reg = Pattern.compile(String.format(
                        "https?://mts?\\d.%1$s/vt\\?lyrs=h@(\\d*)", Server));
                mat = reg.matcher(html);
                if (mat.find()) {
                    int count = mat.groupCount();
                    if (count > 0) {
                        String ver = String.format("h@%1$s", mat.group(1));
                        String old = GMapProviders.Instance.GoogleHybridMap.Version;

                        GMapProviders.Instance.GoogleHybridMap.Version = ver;
                        GMapProviders.Instance.GoogleChinaHybridMap.Version = ver;
                    }
                }

                reg = Pattern.compile(String.format(
                        "https?://khms?\\d.%1$s/kh\\?v=(\\d*)", Server));
                mat = reg.matcher(html);
                if (mat.find()) {
                    int count = mat.groupCount();
                    if (count > 0) {
                        String ver = mat.group(1);
                        String old = GMapProviders.Instance.GoogleSatelliteMap.Version;

                        GMapProviders.Instance.GoogleSatelliteMap.Version = ver;
                        GMapProviders.Instance.GoogleChinaSatelliteMap.Version = "s@"
                                + ver;
                    }
                }

                reg = Pattern.compile(String.format(
                        "https?://mts?\\d.%1$s/vt\\?lyrs=t@(\\d*),r@(\\d*)",
                        Server));
                mat = reg.matcher(html);
                if (mat.find()) {
                    int count = mat.groupCount();
                    if (count > 1) {
                        String ver = String.format("t@%1$s,r@%2$s",
                                mat.group(1), mat.group(2));
                        String old = GMapProviders.Instance.GoogleTerrainMap.Version;

                        GMapProviders.Instance.GoogleTerrainMap.Version = ver;
                        GMapProviders.Instance.GoogleChinaTerrainMap.Version = ver;
                    }
                }
            }

            init = true;
        }
    }

    private static final String Sec1 = "&s=";

    public final PointLatLng GetPoint(String keywords) {
        java.util.ArrayList<PointLatLng> pointList = null;
        List<PointLatLng> tempRef_pointList = new ArrayList<PointLatLng>(
                pointList);
        return pointList != null && pointList.size() > 0 ? pointList.get(0)
                : (PointLatLng) null;
    }

    public String[] GetSecureWords(GPoint pos, String sec1, String sec2) {
        String[] rstr = new String[2];
        rstr[0] = sec1;
        int seclen = (int) ((pos.getX() * 3) + pos.getY()) % 8;
        rstr[1] = SecureWord.substring(0, seclen);
        if (pos.getY() >= 10000 && pos.getY() < 100000) {
            rstr[0] = Sec1;
        }
        return rstr;
    }

    /**
     * @param clientId
     * @param privateKey
     */
    public final void SetEnterpriseCredentials(String clientId,
            String privateKey) {
        privateKey = privateKey.replace("-", "+").replace("_", "/");
        _privateKeyBytes = Base64.encodeBase64(privateKey.getBytes());
        _clientId = clientId;
    }

    private byte[] _privateKeyBytes;

    private String _clientId = "";

    public final String getClientId() {
        return _clientId;
    }
}