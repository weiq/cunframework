package org.cunframework.sc.map4j.core;

import org.cunframework.modules.utils.asynchttp.AsyncHttpConnection;
import org.cunframework.sc.map4j.App;
import org.cunframework.sc.map4j.core.internals.PureImage;
import org.cunframework.sc.map4j.core.internals.impl.GMapImage;
import org.cunframework.sc.map4j.core.providers.GMapProvider;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * maps manager
 */
public class GMaps {
    private static final Logger LOGGER = LoggerFactory.getLogger(GMaps.class);
    
    public static final GMaps Instance = new GMaps();
    
    public static final AsyncHttpConnection http = AsyncHttpConnection.getInstance();
    
    public static GMaps getInstance() {
        return Instance;
    }

    public String tilePath;
    private GMaps() {
        tilePath = App.configuration.getTilePath();
    }
    
    /**
     * 从瓦片服务中得到图片
     * 
     * @param provider
     * @param pos
     * @param zoom
     * @return
     */
    public final PureImage GetImageFrom(GMapProvider provider, GPoint pos, int zoom) {
        PureImage ret = null;

        if (ret == null) {
            ret = provider.GetTileImage(pos, zoom);
        }

        return ret;
    }
    
    public final boolean saveLR(int zoom, GPoint point, PureImage image){
        GMapImage gimage = (GMapImage)image;
        
//        String str1 = String.format("%02d", zoom);
        long x = point.getX();
        long y = point.getY();
//        String str2 = String.format("%08x", x);
//        String str3 = String.format("%08x", y);
        
        String str1 = zoom+"";
        String str2 = x+"";
        String str3 = y+"";
        
        String path = "D://GisMap//L" + str1 + "//R" + str3 + "//";
        
        String filePath = path + "C" + str2 + ".png";
        
        gimage.Save(filePath, "png");
        return false;
    }
}