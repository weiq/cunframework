package org.cunframework.sc.map4j.support.handle.map;

import java.net.URL;
import java.util.List;
import java.util.Map;

import org.cunframework.modules.utils.JSONHelper;
import org.cunframework.modules.utils.asynchttp.ResponseCallback;
import org.cunframework.modules.utils.asynchttp.utility.ResponseCallbackTrace;
import org.cunframework.sc.map4j.core.GMaps;
import org.cunframework.sc.map4j.core.GPoint;
import org.cunframework.sc.map4j.core.PointLatLng;
import org.cunframework.sc.map4j.core.RectLatLng;
import org.cunframework.sc.map4j.core.internals.DownloadInfo;
import org.cunframework.sc.map4j.core.internals.TileStatus;
import org.cunframework.sc.map4j.core.providers.GMapProvider;
import org.cunframework.sc.map4j.core.providers.GMapProviders;
import org.cunframework.sc.map4j.util.MapUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.common.collect.Maps;

import io.undertow.websockets.WebSocketConnectionCallback;
import io.undertow.websockets.core.BufferedTextMessage;
import io.undertow.websockets.core.AbstractReceiveListener;
import io.undertow.websockets.core.WebSocketChannel;
import io.undertow.websockets.core.WebSockets;
import io.undertow.websockets.spi.WebSocketHttpExchange;

/**
 * Map4J 瓦片下载入品
 * 
 * <p/>
 * <p>User: weiq
 * <p>Date: 2015年11月5日 下午5:42:41 
 * <p>Version: 1.0
 */
public class MapDownloadsHandler implements WebSocketConnectionCallback{
    
    private static final Logger LOGGER = LoggerFactory.getLogger(MapDownloadsHandler.class);
    
    public final ResponseCallbackTrace callbackTrace = new ResponseCallbackTrace();
    
    protected final ResponseCallback binCallback = new WebsocketsResponseHandler() {

        public void onSubmit(URL url, TileStatus ts, WebSocketChannel channel) {
            ts.addTileNum();
            
            LOGGER.info(String.format("开始下载瓦片, 级别: %d , %d/%d, URL:%s", 
                    ts.getCurrentZoom(),ts.getTileNum(),ts.getTileCount(),url.toString()));
        }
        
        public void onResponse(byte[] data, URL url, TileStatus ts, WebSocketChannel channel, GPoint point) {
            LOGGER.info(String.format("瓦片下载完成, 数据长度:%d, URL: %s",data.length,url.toString()));
            int currentZoom = ts.getCurrentZoom();
            ts.getProvider().CacheImage(currentZoom, point, data);
            WebSockets.sendText(ts.toString(), channel, null);
        }
        
    };
    
    @Override
    public void onConnect(WebSocketHttpExchange exchange, WebSocketChannel channel) {
        
        channel.getReceiveSetter().set(new AbstractReceiveListener() {
            @Override
            protected void onFullTextMessage(WebSocketChannel channel, BufferedTextMessage message) {
                String dataStr = message.getData();
                
                DownloadInfo di = JSONHelper.json2Object(dataStr, DownloadInfo.class);
                
                List<PointLatLng> pointLatLngs = di.getLatLngs();
                
                if(pointLatLngs==null){
                    LOGGER.error("未取得多边形的范围,点集为空或者不能组成多边形");
                    return;
                }

                int minZoom = di.getFromZoom();
                int maxZoom = di.getToZoom();
                int currentZoom = minZoom;
                String providerName = di.getProviderName(); //"GoogleChinaMap";
                
                RectLatLng rect = MapUtil.getBounds(pointLatLngs);
                
                GMapProvider provider = GMapProviders.Instance.tryGetProvider(providerName);
                if(provider==null){
                    LOGGER.error("provider name : "+providerName+" is null !");
                    Map sendMap = Maps.newHashMap();
                    sendMap.put("isError", true);
                    sendMap.put("content", "provider name : "+providerName+" is null !");
                    
                    WebSockets.sendText(JSONHelper.toJSONString(sendMap), channel, null);
                }else{
                    //ThreadWaiter.reset();
                    while(currentZoom <= maxZoom){
                        List<GPoint> points = provider.getProjection().GetAreaTileList(rect, currentZoom, 0);
                        int len = points.size();
                        TileStatus ts = new TileStatus(provider,currentZoom,0,len);
                        for(int i=0; i<len; i++){
                            String url = provider.GetTileImageUrl(points.get(i), currentZoom);
                            GMaps.http.get(url, callbackTrace.trace(binCallback), ts, channel, points.get(i));
                        }
                        currentZoom++;
                    }
                    //ThreadWaiter.waitingThreads();
                    
                    //LOGGER.info("全部瓦片下载完成!");
                }
            }
        });
        channel.resumeReceives();
    }
}
