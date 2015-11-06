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

  <title>Ipro 用户登录</title>

  <link href="${ctx}/static/css/style.default.css" rel="stylesheet">

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
  <script src="${ctx}/static/js/html5shiv.js"></script>
  <script src="${ctx}/static/js/respond.min.js"></script>
  <![endif]-->
</head>

<body class="signin">

<section>
  
    <div class="signinpanel">
        
        <div class="row">
            
            <div class="col-md-7">
                
                <div class="signin-info">
                    <div class="logopanel">
                        <h1><span>[</span> IPro <span>]</span></h1>
                    </div><!-- logopanel -->
                
                    <div class="mb20"></div>
                
                    <h5><strong>Welcome to IPro Admin!</strong></h5>
                    <ul>
                        <li><i class="fa fa-arrow-circle-o-right mr5"></i> 响应式布局</li>
                        <li><i class="fa fa-arrow-circle-o-right mr5"></i> HTML5/CSS3 验证</li>
                        <li><i class="fa fa-arrow-circle-o-right mr5"></i> Retina优化</li>
                        <li><i class="fa fa-arrow-circle-o-right mr5"></i> WYSIWYG CKEditor</li>
                        <li><i class="fa fa-arrow-circle-o-right mr5"></i> 更多的...</li>
                    </ul>
                    <div class="mb20"></div>
                    <strong>还不是会员? <a href="${ctx}/register">立即注册</a></strong>
                </div><!-- signin0-info -->
            
            </div><!-- col-sm-7 -->
            
            <div class="col-md-5">
                
                <form id="loginForm" method="post">
                    <h4 class="nomargin">用户登录</h4>
                    <p class="mt5 mb20">登录访问您的帐户.</p>
                	<c:if test="${not empty message}">
					    <div class="alert alert-success">
					        <button type="button" class="close" data-dismiss="alert">&times;</button>
					        <span class="icon-ok-sign icon-large"></span>&nbsp;${message}
					    </div>
					    <div class="alert alert-success">
					      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
					      ${message}
					    </div>
					</c:if>
					<c:if test="${not empty error}">
					    <div class="alert alert-danger">
					      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
					      ${error}
					    </div>
					</c:if>
					<div class="form-group">
                   	    <input type="text" id="username" name="username" class="form-control uname" placeholder="用户名" title="请输入用户名!" autofocus required/>
                    </div>
                    <div class="form-group">
                    	<input type="password" id="password" name="password" class="form-control pword" placeholder="密码" title="请输入密码!" required/>
                    </div>
                    
                    <a class="text-right" href=""><small>忘记密码?</small></a>
                    <%-- jcaptchaEnabled 在JCaptchaValidateFilter设置 --%>
		            <c:if test="${jcaptchaEnabled}">
		            <div class="row">
					  <div class="col-md-7 form-group">
					  	<input type="text" id="jcaptchaCode" name="jcaptchaCode" style="margin-top:0px" class="form-control" placeholder="验证码" title="请输入验证码!" required/>
					  </div>
					  <img class="jcaptcha-btn jcaptcha-img" src="${ctx}/jcaptcha.jpg" title="点击更换验证码">
					</div>
		            </c:if>
                    <button class="btn btn-success btn-block">登录</button>
                </form>
            </div><!-- col-sm-5 -->
            
        </div><!-- row -->
        
        <div class="signup-footer">
            <div class="pull-left">
                &copy; 2015. All Rights Reserved. IPro Admin
            </div>
            <div class="pull-right">
                Created By: <a href="#" target="_blank">weiq</a>
            </div>
        </div>
        
    </div><!-- signin -->
  
</section>


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

<script src="${ctx}/static/js/custom.js"></script>
<script>
    jQuery(document).ready(function(){
        
        // Please do not use the code below
        // This is for demo purposes only
        var c = jQuery.cookie('change-skin');
        if (c && c == 'greyjoy') {
            jQuery('.btn-success').addClass('btn-orange').removeClass('btn-success');
        } else if(c && c == 'dodgerblue') {
            jQuery('.btn-success').addClass('btn-primary').removeClass('btn-success');
        } else if (c && c == 'katniss') {
            jQuery('.btn-success').addClass('btn-primary').removeClass('btn-success');
        }
        
        jQuery(".jcaptcha-btn").click(function() {
            var img = $(".jcaptcha-img");
            var imageSrc = img.attr("src");
            if(imageSrc.indexOf("?") > 0) {
                imageSrc = imageSrc.substr(0, imageSrc.indexOf("?"));
            }
            imageSrc = imageSrc + "?" + new Date().getTime();
            img.attr("src", imageSrc);
        });
        
        jQuery("#loginForm").validate({
        	highlight: function(element) {
      	      jQuery(element).closest('.form-group').removeClass('has-success').addClass('has-error');
      	    },
      	    success: function(element) {
      	      jQuery(element).closest('.form-group').removeClass('has-error');
      	    }
        });
    });
</script>

</body>
</html>
