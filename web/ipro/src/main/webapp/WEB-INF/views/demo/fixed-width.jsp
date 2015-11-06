<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Fixed Width</title>
</head>

<body class="fixed">
	<div class="pageheader">
      <h2><i class="fa fa-home"></i> Fixed Width <span>Subtitle goes here...</span></h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="index.html">Bracket</a></li>
          <li><a href="index.html">Pages</a></li>
          <li class="active">Fixed Width</li>
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
	        
	        $("body").addClass("fixed");
	    });
	</script>
</body>
</html>
