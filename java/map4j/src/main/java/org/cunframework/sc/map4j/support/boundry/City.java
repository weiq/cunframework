package org.cunframework.sc.map4j.support.boundry;

import org.cunframework.sc.map4j.core.GMapPolygon;

/**
 * 市级行政区域边界描述
 * 
 * <p/>
 * <p>User: weiq
 * <p>Date: 2015年9月22日 下午1:27:42 
 * <p>Version: 1.0
 */
public class City {
    
    private String code;

    private String name;

    private String rings;
    
    private GMapPolygon polygon;

    public String getCode() {
        return code;
    }

    public String getName() {
        return name;
    }

    public String getRings() {
        return rings;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setRings(String rings) {
        this.rings = rings;
    }

    public GMapPolygon getPolygon() {
        return polygon;
    }

    public void setPolygon(GMapPolygon polygon) {
        this.polygon = polygon;
    }
    
}
