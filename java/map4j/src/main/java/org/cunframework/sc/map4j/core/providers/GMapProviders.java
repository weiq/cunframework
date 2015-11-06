package org.cunframework.sc.map4j.core.providers;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.cunframework.modules.utils.Reflections;
import org.cunframework.modules.utils.asynchttp.AsyncHttpConnection;
import org.cunframework.sc.map4j.core.GMaps;
import org.cunframework.sc.map4j.core.providers.google.GoogleHybridMapProvider;
import org.cunframework.sc.map4j.core.providers.google.GoogleMapProvider;
import org.cunframework.sc.map4j.core.providers.google.GoogleSatelliteMapProvider;
import org.cunframework.sc.map4j.core.providers.google.GoogleTerrainMapProvider;
import org.cunframework.sc.map4j.core.providers.google.China.GoogleChinaHybridMapProvider;
import org.cunframework.sc.map4j.core.providers.google.China.GoogleChinaMapProvider;
import org.cunframework.sc.map4j.core.providers.google.China.GoogleChinaSatelliteMapProvider;
import org.cunframework.sc.map4j.core.providers.google.China.GoogleChinaTerrainMapProvider;

/** 
 * GMapProviders
 */
public class GMapProviders
{
    public static final GMapProviders Instance = new GMapProviders();
    
    public static GMapProviders getInstance() {
        return Instance;
    }
    
	private GMapProviders()
	{
	    list = new ArrayList<GMapProvider>();
	    map = new HashMap<>();
        try {
            Class type = GMapProviders.class;
            for (Field p : type.getFields())
            {
                Object tempVar = Reflections.getFieldValue(this, p.getName());
                GMapProvider v = (GMapProvider)((tempVar instanceof GMapProvider) ? tempVar : null);
                if (v != null)
                {
                    list.add(v);
                    
                    map.put(v.getName(), v);
                }
            }
        } catch (SecurityException e) {
            e.printStackTrace();
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
        } 
	}

	public GoogleMapProvider GoogleMap = GoogleMapProvider.Instance;
	public GoogleSatelliteMapProvider GoogleSatelliteMap = GoogleSatelliteMapProvider.Instance;
	public GoogleHybridMapProvider GoogleHybridMap = GoogleHybridMapProvider.Instance;
	public GoogleTerrainMapProvider GoogleTerrainMap = GoogleTerrainMapProvider.Instance;

	public GoogleChinaMapProvider GoogleChinaMap = GoogleChinaMapProvider.Instance;
	public GoogleChinaSatelliteMapProvider GoogleChinaSatelliteMap = GoogleChinaSatelliteMapProvider.Instance;
	public GoogleChinaHybridMapProvider GoogleChinaHybridMap = GoogleChinaHybridMapProvider.Instance;
	public GoogleChinaTerrainMapProvider GoogleChinaTerrainMap = GoogleChinaTerrainMapProvider.Instance;

	private static List<GMapProvider> list;
	private static Map<String,GMapProvider> map;

	/** 
	 * 得到所有provider实例
	 */
	public List<GMapProvider> getList() {
		return list;
	}
	
	/**
	 * 尝试使用provider的名字获得provider
	 * @param providerName
	 * @return
	 */
	public GMapProvider tryGetProvider(String providerName){
	    if(!map.isEmpty())
	        return map.get(providerName);
	    else
	        return null;
	}
}