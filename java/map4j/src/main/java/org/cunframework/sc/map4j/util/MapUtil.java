package org.cunframework.sc.map4j.util;

import java.util.List;

import org.cunframework.sc.map4j.core.GMapPolygon;
import org.cunframework.sc.map4j.core.PointLatLng;
import org.cunframework.sc.map4j.core.RectLatLng;

import com.google.common.collect.Lists;
import com.google.common.collect.Ordering;

/**
 * MapUtil
 * 
 * <p/>
 * <p>User: weiq
 * <p>Date: 2015年10月14日 下午6:27:31 
 * <p>Version: 1.0
 */
public class MapUtil {
    
    /**
     * 取得多边形的范围
     * @param polygon
     * @return
     */
    public static RectLatLng getBounds(GMapPolygon polygon){
        if(polygon==null || polygon.getPoints()==null || polygon.getPoints().size()<3)
            return null;
        
        List<PointLatLng> points = polygon.getPoints();
        
        return getBounds(points);
    }
    
    public static RectLatLng getBounds(List<PointLatLng> points){
        if(points==null || points.size()<3)
            return null;
        
        List lats = Lists.newArrayList();
        List lngs = Lists.newArrayList();
        
        for(int i=0; i<points.size(); i++){
            PointLatLng point = points.get(i);
            lats.add(point.getLat());
            lngs.add(point.getLng());
        }
        
        double rLng = Ordering.<Double> natural().max(lngs);
        double lLng = Ordering.<Double> natural().min(lngs);
        double tLat = Ordering.<Double> natural().max(lats);
        double bLat = Ordering.<Double> natural().min(lats);
        
        
        return new RectLatLng(tLat, lLng, rLng - lLng, tLat - bLat);
    }
    
    public static void main(String[] args) {
        PointLatLng p0 = new PointLatLng(0, 0);
        PointLatLng p1 = new PointLatLng(1, -1);
        PointLatLng p2 = new PointLatLng(0, 3);
        PointLatLng p3 = new PointLatLng(3, 3);
        PointLatLng p4 = new PointLatLng(3, 0);
        
        GMapPolygon polygon = new GMapPolygon(p0,p1,p2,p3,p4);
        System.out.println(MapUtil.getBounds(polygon));
    }
}
