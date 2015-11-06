<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Horizontal Menu</title>
</head>

<body class="horizontal-menu-sidebar">
    <div class="pageheader">
      <h2><i class="fa fa-home"></i> Horizontal Menu <span>Subtitle goes here...</span></h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="index.html">Bracket</a></li>
          <li class="active">Horizontal Menu</li>
        </ol>
      </div>
    </div>
    
    <div class="contentpanel">
      <!-- content goes here... -->
    </div>

	<script src="${ctx}/static/js/custom.js"></script>
	
	<script>
	    jQuery(document).ready(function(){
	        
	        "use strict";
	        
	        $("body").addClass("horizontal-menu-sidebar");
	    });
	</script>
</body>
</html>
