<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="zh">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="shortcut icon" href="${ctx}/static/images/favicon.png" type="image/png">

  <title>Ipro 用户登录</title>

  <link href="${ctx}/static/css/style.default.css" rel="stylesheet">

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
  <script src="${ctx}/static/js/html5shiv.js"></script>
  <script src="${ctx}/static/js/respond.min.js"></script>
  <![endif]-->
</head>
<body>
<div class="panel">
    <br/>
    <c:set var="stackTrace" value="${error.stackTrace}"/>
    <%@include file="exceptionDetails.jsp"%>
</div>
<script src="${ctx}/static/js/jquery-1.11.1.min.js"></script>
<script src="${ctx}/static/js/jquery-migrate-1.2.1.min.js"></script>
<script src="${ctx}/static/js/bootstrap.min.js"></script>
<script src="${ctx}/static/js/modernizr.min.js"></script>
<script src="${ctx}/static/js/jquery.sparkline.min.js"></script>
<script src="${ctx}/static/js/jquery.cookies.js"></script>

<script src="${ctx}/static/js/toggles.min.js"></script>
<script src="${ctx}/static/js/retina.min.js"></script>

<script src="${ctx}/static/js/jquery.validate.min.js"></script>
<script src="${ctx}/static/js/jquery-validate/messages_zh.js"></script>

</body>
</html>
