NProgress.start();

(function(){
    var geo = window.geo = {
        model: function(title, content, callback){
            $("#myModalLabel").html(title);
            $("#myModalBody").html(content);
            
            $('#myModal').modal('show');
            if(callback)
                $('#myModal .btn-primary').show().click(function(){
                    callback();
                    $('#myModal').modal('hide');
                });
            else
                $('#myModal .btn-primary').hide();
        },
        
        modelInfo: function(title, content, callback){
            this.model(title, content, callback);
            $("#myModal .modal-header")
                .removeClass().addClass("modal-header modal-header-info");
        },
        
        modelSuccess: function(title, content, callback){
            this.model(title, content, callback);
            $("#myModal .modal-header")
                .removeClass().addClass("modal-header modal-header-success");
        },
        
        modelWarning: function(title, content, callback){
            this.model(title, content, callback);
            $("#myModal .modal-header").removeClass().addClass("modal-header modal-header-warning");
        },
        
        modelError: function(title, content, callback){
            this.model(title, content, callback);
            $("#myModal .modal-header").removeClass().addClass("modal-header modal-header-danger");
        },
        
        ajax: {
            _defaultError : function (xhr, err, msg) {
                if (typeof window.console !== 'undefined') {
                    var log = window.console.error;

                    if (!log) {
                        log = window.console.log;
                    }
                    log("==========================================");
                    log("An error occurred with the request."); 
                    log("- Status Code: " + xhr.status);
                    log("- Status Text: " + xhr.statusText);
                    log("- Response Text: " + xhr.responseText);
                    log("- Error: " + err);
                    log("- Message: " + msg);
                    log("==========================================");
                }
            },
            
            getData : function (url, data, successCallback, errorCallback) {
                if (!errorCallback) {
                    errorCallback = this._defaultError;
                }

                $.ajax({
                    type: "GET"
                    , url: url
                    , data: data
                    , contentType:"application/x-www-form-urlencoded; charset=utf-8"
                    , success: successCallback
                    , error: errorCallback
                });
            },
            
            postData : function (url, data, successCallback, errorCallback) {
                if (!errorCallback) {
                    errorCallback = this._defaultError;
                }

                $.ajax({
                    type: "POST"
                    , url: url
                    , data: data
                    , success: successCallback
                    , error: errorCallback
                });
            },
            
            putData : function (url, data, successCallback, errorCallback) {
                if (!errorCallback) {
                    errorCallback = this._defaultError;
                }

                $.ajax({
                    type: "PUT"
                    , url: url
                    , data: data
                    , success: successCallback
                    , error: errorCallback
                });
            },
            
            deleteData : function (url, data, successCallback, errorCallback) {
                if (!errorCallback) {
                    errorCallback = this._defaultError;
                }

                $.ajax({
                    type: "DELETE"
                    , url: url
                    , data: data
                    , success: successCallback
                    , error: errorCallback
                });
            }
        },
        
        sendSocket: function (message) {
            if (!window.WebSocket) {
                return;
            }
            if (socket.readyState == WebSocket.OPEN) {
                socket.send(message);
            } else {
                geo.modelError("错误", "socket 连接没有建立", false);
            }
        }
    };
    
    //Websockets
    var socket;
    if (window.WebSocket) {
        socket = new WebSocket("ws://"+window.location.host+"/socket/mapDownload");
        socket.onmessage = function(event) {
            //geo.model("通知", event.data, false);
            var data = JSON.parse(event.data);  
            
            if(data.isError){
                geo.modelError("错误", data.content, false);
                $("#downloadBtn").text("Download It !"); 
                $("#downloadBtn").prop('disabled', false);
                $(".status-footer .down").hide();
                return;
            }else{
                $(".status-footer .down-zoom").text(data.currentZoom);
                $(".status-footer .down-count").text(data.tileNum+"/"+data.tileCount);
                
                if((data.currentZoom == $("#to-zoom").val()) && (data.tileNum == data.tileCount)){
                    $("#downloadBtn").text("Download It !"); 
                    $("#downloadBtn").prop('disabled', false);
                    //$(".status-footer .down").hide();
                    
                    geo.modelSuccess("通知", "瓦片下载完成", false);
                    return;
                }
            }
        };
        socket.onopen = function(event) {
        };
        socket.onclose = function(event) {
            geo.modelError("错误", "socket 连接已经断开", false);
        };
    } else {
        geo.modelWarning("警告", "您的浏览器不支持  Websockets. (建议使用  Chrome)", false);
        return;
    }
    
    //Leaflet
    var map = L.map('map').setView([45.7441, 126.7023], 13);
    var myMap = map;
    
    var osm = new L.TileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png');
    
    var ROADMAP = new L.TencentLayer();
    var RealROADMAP = new L.TencentLayer("RealROADMAP");
    var SATELLITE = new L.TencentLayer("SATELLITE");
    var TERRAIN = new L.TencentLayer("TERRAIN");
    
    var layersDef = {
        GoogleChinaMap : new L.Google('ROADMAP')                //Google普通地图
        ,GoogleChinaSatelliteMap : new L.Google('SATELLITE')    //Google卫星地图
        ,GoogleChinaHybridMap : new L.Google('HYBRID')          //Google混合地图
        ,CacheGoogleChinaMap : new L.CacheLayer('ROADMAP',{mapName:'google'})               //缓存
        ,CacheGoogleChinaSatelliteMap : new L.CacheLayer('SATELLITE',{mapName:'google'})    //缓存
        ,CacheGoogleChinaHybridMap : new L.CacheLayer('HYBRID',{mapName:'google'})          //缓存       
    
        ,OSM : osm                                              //osm
    
        ,TencentMap: new L.TencentLayer()                                                       //腾讯普通地图
        ,TencentSatelliteMap: new L.TencentLayer("SATELLITE")                                   //腾讯卫星地图
        ,TencentHybridMap: [new L.TencentLayer("SATELLITE"),new L.TencentLayer("RealROADMAP")]    //腾讯混合地图
    
        ,AMapMap: new L.AMapLayer()                                                 //高德普通地图
        ,AMapSatelliteMap: new L.AMapLayer("SATELLITE")                             //高德卫星地图
        ,AMapHybridMap: [new L.AMapLayer("SATELLITE"),new L.AMapLayer("HYBRID")]    //高德混合地图
    
        ,BaiduMap: new L.BaiduLayer()                                                 //百度普通地图
        ,BaiduSatelliteMap: new L.BaiduLayer("SATELLITE")                             //百度卫星地图
        ,BaiduHybridMap: [new L.BaiduLayer("SATELLITE"),new L.BaiduLayer("HYBRID") ]  //百度混合地图
    };
    
    var layer = [layersDef.TencentMap];
    layer[0].on('load', function(e){
        NProgress.done();
    });
    layer[0].addTo(map);
    
    
    var drawnItems = new L.FeatureGroup();
    map.addLayer(drawnItems);

    var drawControl = new L.Control.Draw({
        draw: {
            position: 'topleft',
            polygon: {
                allowIntersection: false,
                shapeOptions: {
                    color: '#FF0000'
                }
            },
            rectangle: {
                shapeOptions: {
                    color: '#FF0000'
                }
            },
            polyline: false,
            circle: {
                shapeOptions: {
                    color: '#662d91'
                }
            }
        },
        edit: {
            featureGroup: drawnItems
        }
    });
    map.addControl(drawControl);

    /**
     * 地图事件监听
     */
    var latLngs = [];
    map.on('draw:created', function (e) {
        latLngs = [];
        
        var type = e.layerType,
            layer = e.layer;

        drawnItems.addLayer(layer);

        if (type === 'circle') {
            latLngs.push([ layer.getLatLng() ], layer.getRadius());
        } else
            latLngs = layer.getLatLngs();

        layer.bindPopup('范围:'+JSON.stringify(latLngs));
        
        //window.geo.model("fff", JSON.stringify(latLngs), function(){alert(JSON.stringify(latLngs))})
    });
    
    $(".status-footer .zoom").text(myMap.getZoom())
    map.on("zoomend", function (e) { 
        $(".status-footer .zoom").text(myMap.getZoom());
    });
    
    map.on('mousemove', function(e) {
        $(".status-footer .coord")
            .text(e.latlng.lng.toFixed(3) + ", " + e.latlng.lat.toFixed(3))
    });
    
    /** 
     * 按钮事件 
     * 
     * */
    //把导航栏按钮关联到leaflet.draw控件按钮上.
    $("#draw_rect").click(function(){
        $(this).parents('.dropdown-menu').find('li').removeClass("active");
        $(this)
            .parent().addClass("active")
        $(".leaflet-draw-draw-rectangle")[0].click();
    });
    $("#draw_circle").click(function(){
        $(this).parents('.dropdown-menu').find('li').removeClass("active");
        $(this)
            .parent().addClass("active")
        $(".leaflet-draw-draw-circle")[0].click();
    });
    $("#draw_polygon").click(function(){
        $(this).parents('.dropdown-menu').find('li').removeClass("active");
        $(this)
            .parent().addClass("active")
        $(".leaflet-draw-draw-polygon")[0].click();
    });
    $("#draw_clear").click(function(){
        $(this).parents('.dropdown-menu').find('li').removeClass("active");
        drawnItems.clearLayers();
    });
    
    //点击下载按钮时触发
    $("#downloadBtn").click(function(){
        $(this).text("Downloading ..."); 
        $(this).prop('disabled', true);
        $(".status-footer .down").show();
        
        var n = $("#lat-north").val(); 
        var e = $("#lon-east").val(); 
        var s = $("#lat-south").val(); 
        var w = $("#lon-west").val();
        
        var ll = [];
        if(n && e && s && w){
            ll.push([
               {"lng":w,"lat":n},
               {"lng":e,"lat":n},
               {"lng":e,"lat":s},
               {"lng":w,"lat":s}
            ]);
        }
        
        if(latLngs.length==0 && ll.length==0){
            geo.modelError("警告", "<h5>请先使用导航中的<code>画图工具</code>框选区域 ,或在左侧<code>选取范围</code>内填写 !</h5>", false);
            return;
        }
        
        ll = ll.length>0?ll:latLngs;
        
        var fromZoom = $("#from-zoom").val();
        var toZoom = $("#to-zoom").val();
        if(!fromZoom || !toZoom){
            geo.modelError("警告", "<h5>请在左侧任务栏<code>缩放级别</code>中填写范围 !</h5>", false);
            return;
        }
        
        $(this).text("Downloading ..."); 
        $(this).prop('disabled', true);
        $(".status-footer .down").show();
        
        var data = {
            latLngs: ll,
            fromZoom: fromZoom,
            toZoom: toZoom,
            providerName: mapProvider
        };
        geo.sendSocket(JSON.stringify(data));
    });
    
    var mapProvider = "TencentMap", providerPrefix = "Tencent", providerSuffix = "";
    //地图切换按钮事件
    $("#mapPrefix a").click(function(){
        var prefix = $(this).attr("prefix");
        
        var accessType = $("#accessType .active");
        if(accessType.length!=0 && accessType.find('a').hasClass("offline")){
            prefix = "Cache"+prefix;
        }
        
        mapProvider = prefix+providerSuffix+"Map";
        
        if(switchLayer(mapProvider)){
            providerPrefix = prefix;
            var selText = $(this).html();
            $(this).parents('.dropdown-menu').find('li').removeClass("active");
            $(this)
                .parent().addClass("active")
                .parents('.dropdown').find('.dropdown-toggle')
                .html(selText+'<span class="caret"></span>');
        }
    });
    
    //切换类型按钮事件
    $("#mapSuffix a").click(function(){
        var suffix = $(this).attr("suffix");
        mapProvider = providerPrefix+suffix+"Map";
        
        if(switchLayer(mapProvider)){
            providerSuffix = suffix;
            var selText = $(this).html();
            $(this).parents('.dropdown-menu').find('li').removeClass("active");
            $(this).parent().addClass("active")
                .parents('.dropdown').find('.dropdown-toggle')
                .html(selText+'<span class="caret"></span>');
        }
    });
    
    //访问方式切换
    $("#accessType a").click(function(){
        var type = $(this).prop("class");
        
        if(type=="online" && mapProvider.indexOf("Cache")!=-1){
            mapProvider = mapProvider.substring(5);
            providerPrefix = providerPrefix.substring(5);
            if(layersDef[mapProvider])
                $("#downloadBtn").prop('disabled', false);
        }else if(type=="offline" && mapProvider.indexOf("Cache")==-1){
            mapProvider = "Cache"+mapProvider;
            providerPrefix = "Cache"+providerPrefix;
            if(layersDef[mapProvider])
                $("#downloadBtn").prop('disabled', true);
        }
        
        if(switchLayer(mapProvider)){
            var selText = $(this).html();
            $(this).parents('.dropdown-menu').find('li').removeClass("active");
            $(this)
                .parent().addClass("active")
                .parents('.dropdown').find('.dropdown-toggle')
                .html(selText+'<span class="caret"></span>');
        }
    });
    
    function switchLayer(layerName){
        if(layersDef[layerName]){
            
            for(var i in layer){
                map.removeLayer(layer[i]);
                layer[i].off('loading', loadingHandler);
                layer[i].off('load', loadHandler);
            }
            
            if (layersDef[layerName] instanceof Array) {
                var layers = layersDef[layerName];
                for(var i in layers){
                    layer.push(layers[i]);
                    layers[i].on('loading', loadingHandler);
                    layers[i].on('load', loadHandler);
                    map.addLayer(layers[i]);
                }
            } else {
                var _layer = layersDef[layerName];
                
                layer.push(_layer);
                _layer.on('loading', loadingHandler);
                _layer.on('load', loadHandler);
                map.addLayer(_layer);
            }
            
            return true;
        }else{
            geo.modelWarning("警告","层定义中未发现对应层 : "+layerName, false);
            return false;
        }
    };
    
    function loadingHandler(event) {
        NProgress.start();
    };
    
    function loadHandler(event) {
        NProgress.done();
    };
})()
