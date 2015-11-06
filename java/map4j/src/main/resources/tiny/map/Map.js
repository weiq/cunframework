/**
 * Tiny map class 
 */
T.Events.MAP_LOAD = 'mapload'; //地图载入开始
T.Events.MAP_LOADED = 'maploaded'; //地图载入完成

T.Map = T.Evented.extend({
    
    options: {
        projection: 'EPSG:3857'
        ,target: 'map'
    }
    
    /**
     * @param id {HTMLElement or String, Object} 地图容器
     * @param options {Object} 附加参数
     */
    ,initialize: function (id, options) {
        options = T.setOptions(this, options);
        
        this._initContainer(id,options);
        
        this.tinyMap = new ol.Map(options);
        
        this._layers = {}; //所有层
        
        if(this.options.layers)
            this.addLayer(this.options.layers);
    }
    
    // 公共方法
    
    /**
     * API: 改变地图视窗及缩放级别
     * @param center 中心点经纬度坐标
     * @param zoom 缩放级别
     */
    ,setView: function (center, zoom) {
        this.tinyMap.setView(new ol.View({
            projection: this.options.projection,
            center: ol.proj.transform(center, 'EPSG:4326', this.options.projection),
            zoom: zoom
        }));
        this.fire(T.Events.MAP_LOADED); //地图载入完成
        return this;
    }
    
    ,setZoom: function (zoom, options) {
    }

    ,zoomIn: function (delta, options) {
    }

    ,zoomOut: function (delta, options) {
    }
    
    // 私有方法
    
    /**
     * 初始化容器
     */
    ,_initContainer: function (id,options) {
        var container = this._container = 
            typeof id === 'string' ? document.getElementById(id) : id;

        if (!container) {
            throw new Error('地图容器没有找到. 目标:'+id);
        } else if (container._tiny) {
            throw new Error('地图已经被初始化!');
        }
        
        options.target = id;
        container._tiny = true;
    }
});

T.map = function (id, options) {
    return new T.Map(id, options);
};
