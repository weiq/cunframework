/*
 * Map4JTile 是标准的使用xyz数字的瓦片层
 */

T.Map4JTile = T.Layer.extend({
    
	options: {
	    wrapX: false
	}

	,initialize: function (url, options) {

		this._url = url;
		
		options = T.setOptions(this, options);
		
		this.loadSource(options);
        this.loadLayer(options);
	}
	
    ,loadSource: function(options){
        var _opt = {
            attributions: [this.ATTRIBUTION],
            url: this._url,
            wrapX: options.wrapX
        }
        
        this.source = new ol.source.XYZ(_opt)
    }
    
    ,loadLayer: function(){
        this.layer = new ol.layer.Tile({source: this.source});
    }
    
    ,ATTRIBUTION: new ol.Attribution({
        html: '&copy; ' +
        '<a href="#">Cunframework Map4J</a> ' +
        'contributors.'
    })
});

T.map4JTile = function (url, options) {
	return new T.Map4JTile(url, options);
};
