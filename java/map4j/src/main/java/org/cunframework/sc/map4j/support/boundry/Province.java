package org.cunframework.sc.map4j.support.boundry;

import java.util.List;

/**
 * 省级行政区域边界描述
 * 
 * <p/>
 * <p>User: weiq
 * <p>Date: 2015年9月22日 下午1:49:01 
 * <p>Version: 1.0
 */
public class Province {
    private String ID;

    private String code;

    private String name;

    private String rings;

    private List<City> City;

    public String getID() {
        return ID;
    }

    public String getCode() {
        return code;
    }

    public String getName() {
        return name;
    }

    public String getRings() {
        return rings;
    }

    public List<City> getCity() {
        return City;
    }

    public void setID(String iD) {
        ID = iD;
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

    public void setCity(List<City> city) {
        City = city;
    }
}
