/*
 * TileLayer 是标准的使用xyz数字的瓦片层
 */

T.MapGuideTile = T.Layer.extend({
    
    METERS_PER_UNIT: 111319.4908,
    DPI: 96,

	options: {
	    projection: "EPSG:4326",
	    basemap: "map",
	    wrapX: false,
	    tileWidth: 256,
	    tileHeight: 256
	}

	,initialize: function (url, options) {

		this._url = url;
		
		options = T.setOptions(this, options);
		
		if(!options.resource)
		    new Error("初始化MapGuide瓦片时发生错误 resource 不能为空!");
		
		var urlParam = {
            mapdefinition: options.resource,
            basemaplayergroupname: options.basemap,
            operation: 'GETTILEIMAGE',
            version: '1.2.0',
            tilecol: '{x}',
            tilerow: '{y}',
            scaleindex: '{z}'
        };
        this._url = url + T.Util.getParamString(urlParam,url);

		this.loadSource(options);
        this.loadLayer(options);
	}
	
    ,loadSource: function(options){
        var tileSize = [options.tileWidth, options.tileHeight];

        var extent = options.extent || [];
        var scales = options.scales || [];
        this.zOrigin = scales.length - 1;
        
        var inPerUnit = 39.37 * this.METERS_PER_UNIT;
        var len = scales.length;
        var resolutions = new Array(len);
        for (var i = 0; i < len; ++i) {
            resolutions[i] = scales[i] / inPerUnit / this.DPI;
        } 
        
        var tileGrid = new ol.tilegrid.TileGrid({
            origin: ol.extent.getTopLeft(extent),
            resolutions: resolutions,
            tileSize: tileSize
        });
        
        var tileUrlFunction = T.bind(this.tileUrlFunction,this);
        
        var _opt = {
            attributions: [this.ATTRIBUTION],
            tileGrid: tileGrid,
            projection: ol.proj.get(options.projection),
            tileUrlFunction: tileUrlFunction,
            wrapX: false
        }
        
        this.source = new ol.source.TileImage(_opt)
    }
    
    ,loadLayer: function(){
        this.layer = new ol.layer.Tile({source: this.source});
    }
    
    //@override
    ,tileUrlFunction: function(tileCoord){
        return T.Util.template(this._url, {
            'z': this.zOrigin - tileCoord[0],
            'x': tileCoord[1],
            'y': -tileCoord[2] - 1
        });
    }
    
    ,ATTRIBUTION: new ol.Attribution({
        html: '&copy; ' +
        '<a href="http://mapguide.osgeo.org/">MapGuide</a> ' +
        'contributors.'
    })
});

T.mapGuideTile = function (url, options) {
	return new T.MapGuideTile(url, options);
};
