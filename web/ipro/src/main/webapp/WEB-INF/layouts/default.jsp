<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/common/taglibs.jspf"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<title><sitemesh:title/> - IPro</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="description" content="">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />

<link href="${ctx}/static/images/favicon.png" rel="shortcut icon" type="image/png">
<link href="${ctx}/static/css/style.default.css" rel="stylesheet">
<script src="${ctx}/static/js/jquery-1.11.1.min.js"></script>
<script>var ctx = '${ctx}';</script>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="${ctx}/static/js/html5shiv.js"></script>
<script src="${ctx}/static/js/respond.min.js"></script>
<![endif]-->
<sitemesh:head />
</head>

<body>
	<!-- Preloader 预加载动画 -->
	<div id="preloader">
		<div id="status"><i class="fa fa-spinner fa-spin"></i></div>
	</div>
	<section>
		<%@ include file="/WEB-INF/layouts/menu.jsp"%>
		<div class="mainpanel">
			<%@ include file="/WEB-INF/layouts/header.jsp"%>
			<sitemesh:body />
		</div>
		<%@ include file="/WEB-INF/layouts/right.jsp"%>
	</section>
				
	<script src="${ctx}/static/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="${ctx}/static/js/jquery-ui-1.10.3.min.js"></script>
	<script src="${ctx}/static/js/bootstrap.min.js"></script>
	<script src="${ctx}/static/js/modernizr.min.js"></script>
	<script src="${ctx}/static/js/jquery.sparkline.min.js"></script>
	<script src="${ctx}/static/js/toggles.min.js"></script>
	<script src="${ctx}/static/js/retina.min.js"></script>
	<script src="${ctx}/static/js/jquery.cookies.js"></script>
</body>
</html>