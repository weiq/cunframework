/**
 * 本地缓存层
 */
L.CacheLayer = L.TileLayer.extend({
    mapName: '',
    
    options: {
        subdomains: [1, 2, 3, 4],
        attribution: '© Map4J Cache Layer Data: localhsot ©',
        errorTileUrl: 'images/tile_404.png'
    },
    
    //type: ROADMAP(普通地图), SATELLITE(卫星), HYBRID(混合)
    initialize: function(type, options) {
        L.Util.setOptions(this, options);
        
        this._type = type || 'ROADMAP';
        
        this.mapName = options.mapName;
    },
    
    getTileUrl: function (tilePoint) {
        this._url = 'http://'+window.location.host+'/geo/'+this.mapName+'/road/L{z}/R{y}/C{x}.png';
        var urlArgs = {
            z: tilePoint.z,
            x: tilePoint.x,
            y: tilePoint.y
        };
        switch(this._type){
        case 'ROADMAP':
            break;
        case 'SATELLITE':
            this._url = 'http://'+window.location.host+'/geo/'+this.mapName+'/sate/L{z}/R{y}/C{x}.png';
            break;
        case 'HYBRID':
            this._url = 'http://'+window.location.host+'/geo/'+this.mapName+'/hybrid/L{z}/R{y}/C{x}.png';
            break;
        }
        
        return L.Util.template(this._url, L.extend(urlArgs, this.options));
    }
});

L.cacheLayer = function (key, options) {
    return new L.CacheLayer(key, options);
};
