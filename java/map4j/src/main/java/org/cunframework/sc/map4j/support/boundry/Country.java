package org.cunframework.sc.map4j.support.boundry;

import java.util.List;

/**
 * 国家
 * 
 * <p/>
 * <p>User: weiq
 * <p>Date: 2015年9月22日 下午1:49:56 
 * <p>Version: 1.0
 */
public class Country {
    public String ID;

    public String code;

    public String name;

    public List<Province> Province;

    public String getID() {
        return ID;
    }

    public String getCode() {
        return code;
    }

    public String getName() {
        return name;
    }

    public List<Province> getProvince() {
        return Province;
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

    public void setProvince(List<Province> province) {
        Province = province;
    }
}
