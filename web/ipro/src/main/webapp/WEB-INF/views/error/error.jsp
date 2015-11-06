<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.io.StringWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
  <script src="${ctx}/static/js/jquery-1.11.1.min.js"></script>

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
  <script src="${ctx}/static/js/html5shiv.js"></script>
  <script src="${ctx}/static/js/respond.min.js"></script>
  <![endif]-->
</head>
<body>
<div class="panel">
    <%
        Integer statusCode = (Integer) request.getAttribute("javax.servlet.error.status_code");
        pageContext.setAttribute("statusCode", statusCode);

        String uri = (String) request.getAttribute("javax.servlet.error.request_uri");
        String queryString = request.getQueryString();
        String url = uri + (queryString == null || queryString.length() == 0 ? "" : "?" + queryString);
        pageContext.setAttribute("url", url);

        Throwable exception = (Throwable) request.getAttribute("javax.servlet.error.exception");
        request.setAttribute("exception", exception);

    %>

    <c:if test="${statusCode eq 404}">
        <cun:showMessage errorMessage="<h3 style='display:inline;'>页面没有找到！</h3><br/>对不起，暂时没有找到您所访问的页面地址,请联系管理员解决此问题！&nbsp;&nbsp;&nbsp;&nbsp;<refresh><a href='${url}' class='btn btn-danger'>刷新,看看是否能访问了</a></refresh>"/>
    </c:if>

    <c:if test="${statusCode ne 404}">
        <cun:showMessage errorMessage="<h3 style='display:inline;'>服务器程序出问题了！</h3><br/>对不起,您访问的页面出了一点内部小问题，刷新重新访问或先去别的页面转转,过会再来吧~！&nbsp;&nbsp;&nbsp;&nbsp;<refresh><a href='${url}' class='btn btn-danger'>刷新,看看是否能访问了</a></refresh>"/>
        <c:if test="${not empty exception}">
            <%
                StringWriter stringWriter = new StringWriter();
                PrintWriter printWriter = new PrintWriter(stringWriter);
                exception.printStackTrace(printWriter);
                String stackTrace = stringWriter.toString();
                stackTrace = stackTrace.replace(System.getProperty("line.separator"), "<br/>\n");
                pageContext.setAttribute("stackTrace", stackTrace);
            %>
            <%@include file="exceptionDetails.jsp"%>
        </c:if>
    </c:if>
</div>
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
