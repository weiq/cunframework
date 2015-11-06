
T.Events.LAYER_LOAD   = 'layerload'; //层载入开始
T.Events.LAYER_LOADED = 'layerloaded'; //层载入完成


T.Layer = T.Evented.extend({
    
    /**
     * {ol.source}
     */
    source: null, 
    
    /**
     * {ol.layer}
     */
    layer: null,
    
    initialize: function () {
    }

    //公共方法
    ,addTo: function (map) {
        map.addLayer(this);
        return this;
    }

    ,remove: function () {
        return this.removeFrom(this._map || this._mapToAdd);
    }

    ,removeFrom: function (obj) {
        if (obj) {
            obj.removeLayer(this);
        }
        return this;
    }

    //私有方法
    ,_layerAdd: function (e) {
        var map = e.target;

        // 检查层是否已装准备好
        if (!map.hasLayer(this)) { return; }

        this._map = map;

        map.fire(T.Events.LAYER_LOADED, {layer: this});
    }
});


T.Map.include({
    addLayer: function (layer) {
        this.tinyMap.addLayer(layer.layer);
    },

    removeLayer: function (layer) {
        
    },

    hasLayer: function (layer) {
       
    },

    eachLayer: function (method, context) {
       
    }
});
