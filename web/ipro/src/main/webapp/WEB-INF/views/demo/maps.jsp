<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>Maps</title>
<link href="${ctx}/static/css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
</head>
<body>
	<div class="pageheader">
		<h2>
			<i class="fa fa-map-marker"></i> Maps <span>Subtitle goes
				here...</span>
		</h2>
		<div class="breadcrumb-wrapper">
			<span class="label">You are here:</span>
			<ol class="breadcrumb">
				<li><a href="index.html">Bracket</a></li>
				<li class="active">Maps</li>
			</ol>
		</div>
	</div>

	<div class="contentpanel">

		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title">Google Maps</h4>
				<p>
					<a href="http://hpneo.github.io/gmaps/" target="_blank">gmaps.js</a>
					allows you to use the potential of Google Maps in a simple way.
				</p>
			</div>
			<!-- panel-heading -->
			<div class="panel-body">
				<div class="row">
					<div class="col-md-6">
						<h5 class="subtitle">Basic Map</h5>
						<p>Some basic example of using google maps with latitude and
							longitude defined.</p>
						<div id="gmap" style="height: 300px"></div>
					</div>
					<!-- col-md-6 -->
					<div class="col-md-6">
						<h5 class="subtitle">Map With Marker</h5>
						<p>Some example of using google maps with markers enabled</p>
						<div id="gmap-marker" style="height: 300px"></div>
					</div>
					<!-- col-md-6 -->
				</div>
				<!-- row -->
			</div>
			<!-- panel-body -->
		</div>
		<!-- panel -->

		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title">jVectorMap</h4>
				<p>
					<a href="http://jvectormap.com/" target="_blank">jVectorMap</a>
					uses only native browser technologies like JavaScript, CSS, HTML,
					SVG or VML. No Flash or any other proprietary browser plug-in is
					required.
				</p>
			</div>
			<!-- panel-heading -->
			<div class="panel-body">
				<div class="row">
					<div class="col-md-6">
						<h5 class="subtitle">World Map</h5>
						<p>Some basic example of using vector map displaying the map
							of the world.</p>
						<div id="vectormap-world" style="height: 300px"></div>
					</div>
					<!-- col-md-6 -->
					<div class="col-md-6">
						<h5 class="subtitle">Map By Country</h5>
						<p>Below is an example of vector map that display only by
							country (ie United States)</p>
						<div id="vectormap-country" style="height: 300px"></div>
					</div>
					<!-- col-md-6 -->
				</div>
				<!-- row -->
			</div>
			<!-- panel-body -->
		</div>
		<!-- panel -->
	</div>

	<script src="${ctx}/static/js/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="${ctx}/static/js/jquery-jvectormap-world-mill-en.js"></script>
	<script src="${ctx}/static/js/jquery-jvectormap-us-aea-en.js"></script>

	<script src="${ctx}/static/js/custom.js"></script>
	<script>
    jQuery(document).ready(function(){
        
        "use strict";
        
        jQuery('#vectormap-world').vectorMap({
            map: 'world_mill_en',
            regionStyle: {
                initial: {
                    fill: '#a5a7aa'
                },
                hover: {
                    fill: '#6e7072'
                }     
            },
            backgroundColor: '#fcfcfc'
        });
        
        jQuery('#vectormap-country').vectorMap({
            map: 'us_aea_en',
            regionStyle: {
                initial: {
                    fill: '#a5a7aa'
                },
                hover: {
                    fill: '#6e7072'
                }     
            },
            backgroundColor: '#fcfcfc'
        });
        
    });
</script>

</body>
</html>
