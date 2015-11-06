package org.cunframework.sc.map4j.core;

import java.util.List;

import com.google.common.collect.Lists;

/**
 * Polygon
 * 
 * <p/>
 * <p>User: weiq
 * <p>Date: 2015年10月14日 下午6:22:59 
 * <p>Version: 1.0
 */
public class GMapPolygon {
    private List<PointLatLng> points;
    
    public GMapPolygon() {
    }
    
    public GMapPolygon(PointLatLng... p) {
        points = Lists.newArrayList(p);
    }

    public List<PointLatLng> getPoints() {
        return points;
    }

    public void setPoints(List<PointLatLng> points) {
        this.points = points;
    };
}
