<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Blank</title>
    </head>

    <body>
        <div class="pageheader">
            <h2><i class="fa fa-home"></i> Blank Page <span>Subtitle goes here...</span></h2>
            <div class="breadcrumb-wrapper">
                <span class="label">You are here:</span>
                <ol class="breadcrumb">
                    <li><a href="index.html">Bracket</a></li>
                    <li class="active">Blank</li>
                </ol>
            </div>
        </div>

        <div class="contentpanel">
            <!-- content goes here... -->
        </div>

        <script src="${ctx}/static/js/custom.js"></script>
    </body>
</html>
