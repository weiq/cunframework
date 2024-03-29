/**
 * Copyright (c) 2012-2015 https://github.com/weiq
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 */
package org.cunframework.sc.map4j.core.projections;

import org.cunframework.sc.map4j.core.GPoint;
import org.cunframework.sc.map4j.core.GSize;
import org.cunframework.sc.map4j.core.PointLatLng;
import org.cunframework.sc.map4j.core.PureProjection;
import org.cunframework.sc.map4j.core.RectLatLng;

/** 
Plate Carrée (literally, "plane square") projection
PROJCS["WGS 84 / World Equidistant Cylindrical",GEOGCS["GCS_WGS_1984",DATUM["D_WGS_1984",SPHEROID["WGS_1984",6378137,298.257223563]],PRIMEM["Greenwich",0],UNIT["Degree",0.017453292519943295]],UNIT["Meter",1]]

*/
public class PlateCarreeProjectionPergo extends PureProjection {
    public static final PlateCarreeProjectionPergo Instance = new PlateCarreeProjectionPergo();

    private static final double MinLatitude = -85.05112878;
    private static final double MaxLatitude = 85.05112878;
    private static final double MinLongitude = -180;
    private static final double MaxLongitude = 180;

    @Override
    public RectLatLng getBounds() {
        return RectLatLng.FromLTRB(MinLongitude, MaxLatitude, MaxLongitude,
                MinLatitude);
    }

    private GSize tileSize = new GSize(256, 256);

    @Override
    public GSize getTileSize() {
        return tileSize;
    }

    @Override
    public double getAxis() {
        return 6378137;
    }

    @Override
    public double getFlattening() {
        return (1.0 / 298.257223563);
    }

    @Override
    public GPoint FromLatLngToPixel(double lat, double lng, int zoom) {
        GPoint ret = GPoint.Empty;

        lat = Clip(lat, MinLatitude, MaxLatitude);
        lng = Clip(lng, MinLongitude, MaxLongitude);

        GSize s = GetTileMatrixSizePixel(zoom).clone();
        double mapSizeX = s.getWidth();
        double mapSizeY = s.getHeight();

        double scale = 360.0 / mapSizeX;

        ret.setY((long) ((90.0 - lat) / scale));
        ret.setX((long) ((lng + 180.0) / scale));

        return ret;
    }

    @Override
    public PointLatLng FromPixelToLatLng(long x, long y, int zoom) {
        PointLatLng ret = PointLatLng.Empty;

        GSize s = GetTileMatrixSizePixel(zoom).clone();
        double mapSizeX = s.getWidth();
        double mapSizeY = s.getHeight();

        double scale = 360.0 / mapSizeX;

        ret.setLat(90 - (y * scale));
        ret.setLng((x * scale) - 180);

        return ret;
    }

    @Override
    public GSize GetTileMatrixMaxXY(int zoom) {
        long y = (long) Math.pow(2, zoom);
        return new GSize((2 * y) - 1, y - 1);
    }

    @Override
    public GSize GetTileMatrixMinXY(int zoom) {
        return new GSize(0, 0);
    }
}
