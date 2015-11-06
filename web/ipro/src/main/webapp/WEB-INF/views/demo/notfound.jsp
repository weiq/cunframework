<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="shortcut icon" href="${ctx}/static/images/favicon.png" type="image/png">
  <title>404 NOT FOUND</title>
  <link href="${ctx}/static/css/style.default.css" rel="stylesheet">

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
  <script src="${ctx}/static/js/html5shiv.js"></script>
  <script src="${ctx}/static/js/respond.min.js"></script>
  <![endif]-->
</head>

<body class="notfound">
	<div class="notfoundpanel">
	  <h1>404!</h1>
	  <h3>The page you are looking for has not been found!</h3>
	  <h4>The page you are looking for might have been removed, had its name changed, or unavailable. <br />Maybe you could try a search:</h4>
	  <form action="${ctx}/demo/search-results.html">
	      <input type="text" class="form-control" placeholder="Search for page" /> <button class="btn btn-success">Search</button>
	  </form>
	</div><!-- notfoundpanel -->
  
	
	<script src="${ctx}/static/js/jquery-1.11.1.min.js"></script>
	<script src="${ctx}/static/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="${ctx}/static/js/bootstrap.min.js"></script>
	<script src="${ctx}/static/js/modernizr.min.js"></script>
	<script src="${ctx}/static/js/jquery.sparkline.min.js"></script>
	<script src="${ctx}/static/js/jquery.cookies.js"></script>
	
	<script src="${ctx}/static/js/toggles.min.js"></script>
	<script src="${ctx}/static/js/retina.min.js"></script>
	
	<script src="${ctx}/static/js/custom.js"></script>
	<script>
	    jQuery(document).ready(function(){
	        "use strict";
	        
	        // Do not use the code below
	        // For demo purposes only
	        var c = jQuery.cookie('change-skin');
	        if (c && c == 'katniss') {
	            jQuery('.btn-success').addClass('btn-primary').removeClass('btn-success');
	        }
	        
	    });
	</script>

</body>
</html>
