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
  <title>Locked</title>
  <link href="${ctx}/static/css/style.default.css" rel="stylesheet">

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
  <script src="${ctx}/static/js/html5shiv.js"></script>
  <script src="${ctx}/static/js/respond.min.js"></script>
  <![endif]-->
</head>

<body class="notfound">

<section>
  
    <div class="lockedpanel">
        <div class="locked">
            <i class="fa fa-lock"></i>
        </div>
        <div class="loginuser">
            <img src="${ctx}/static/images/photos/loggeduser.png" alt="" />
        </div>
        <div class="logged">
            <h4>John Doe</h4>
            <small class="text-muted">username@domain.com</small>
        </div>
        <form method="post" action="index.html">
            <input type="password" class="form-control" placeholder="Enter your password" />
            <button class="btn btn-success btn-block">Unlock</button>
        </form>
    </div><!-- lockedpanel -->
  
</section>


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
        // This is for demo purposes only
        var c = jQuery.cookie('change-skin');
        if (c && c == 'katniss') {
            jQuery('.btn-success').addClass('btn-primary').removeClass('btn-success');
        }
        
    });
</script>
</body>
</html>
