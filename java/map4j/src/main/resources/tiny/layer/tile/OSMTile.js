/*
 * TileLayer 是标准的使用xyz数字的瓦片层
 */

T.OSMTile = T.Layer.extend({

	options: {
	}

	,initialize: function () {
	    this.loadSource();
	    this.loadLayer();
	}
	
	,loadSource: function(){
	    this.source = new ol.source.OSM();
	}
	
	,loadLayer: function(){
	    this.layer = new ol.layer.Tile({source: this.source});
	}
});

T.osmTile = function () {
	return new T.OSMTile();
};
