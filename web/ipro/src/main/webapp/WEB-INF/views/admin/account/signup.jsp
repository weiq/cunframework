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

<title>Ipro 用户注册</title>

<link href="${ctx}/static/css/style.default.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="${ctx}/static/js/html5shiv.js"></script>
  <script src="${ctx}/static/js/respond.min.js"></script>
  <![endif]-->
</head>

<body class="signin">
	<section>

		<div class="signuppanel">

			<div class="row">

				<div class="col-md-6">

					<div class="signup-info">
						<div class="logopanel">
							<h1>
								<span>[</span> IPro <span>]</span>
							</h1>
						</div>
						<!-- logopanel -->

						<div class="mb20"></div>

						<h5>
							<strong>Bootstrap 3 的管理模板!</strong>
						</h5>
						<p>Ipro 是一个有着漂亮脸蛋,和不错内涵的帅小伙,集合着
						所有当下流下着的东西,他有些叛逆,他喜欢改变,讨厌老一套,
						Oh!请不要吝啬对他的赞美!.</p>
						<p>下面是一些关于他的一点点介绍.</p>
						<div class="mb20"></div>

						<div class="feat-list">
							<i class="fa fa-wrench"></i>
							<h4 class="text-success">容易定制</h4>
							<p>Ipro 前台基于 Bootstrap 3 所以你可以使用Bootstrap 3轻松地自定义你所
							        看到的任何元素.</p>
						</div>

						<div class="feat-list">
							<i class="fa fa-compress"></i>
							<h4 class="text-success">响应式布局</h4>
							<p>Ipro 自适应所有浏览器的宽度和不同分辨率的移动设备.
							        尝试改变你浏览器的比例,看Ipro的变化.</p>
						</div>

						<div class="feat-list mb20">
							<i class="fa fa-search-plus"></i>
							<h4 class="text-success">Retina优化</h4>
							<p> 当一个页面被加载时,脚本文件会检查页面中的每个图片,如果存在一个高分图
							   片时,脚本文件会自动使用这个图片.</p>
						</div>

						<h4 class="mb20">更多的...</h4>

					</div>
					<!-- signup-info -->

				</div>
				<!-- col-sm-6 -->

				<div class="col-md-6">

					<form id="inputForm" action="${ctx}/register" method="post">

						<h3 class="nomargin">申请注册</h3>
						<p class="mt5 mb20">
							已有一个帐号? <a href="signin.html"><strong>用户登录</strong></a>
						</p>

						<div class="mb10">
							<label class="control-label">名字/昵称</label> 
							<input type="text" id="name" name="name" class="form-control" />
						</div>

						<div class="mb10">
							<label class="control-label">用户名 <span class="asterisk">*</span></label> 
							<input type="text" id="username" name="username" class="form-control" minlength="3" required/>
						</div>

						<div class="mb10">
							<label class="control-label">密码 <span class="asterisk">*</span></label> 
							<input type="password" id="plainPassword" name="plainPassword" class="form-control" required/>
						</div>

						<div class="mb10">
							<label class="control-label">重复密码 <span class="asterisk">*</span></label>
							<input type="password" id="confirmPassword" name="confirmPassword" class="form-control" equalTo="#plainPassword" required/>
						</div>

						<label class="control-label">生日</label>
						<div class="row mb10">
							<div class="col-sm-4">
								<input type="text" class="form-control" placeholder="年" />
							</div>
							<div class="col-sm-5">
								<select class="select2" data-placeholder="月">
									<option value=""></option>
									<option value="January">一月</option>
									<option value="February">二月</option>
									<option value="March">三月</option>
									<option value="April">四月</option>
									<option value="May">五月</option>
									<option value="June">六月</option>
									<option value="July">七月</option>
									<option value="August">八月</option>
									<option value="September">九月</option>
									<option value="October">十月</option>
									<option value="November">十一月</option>
									<option value="December">十二月</option>
								</select>
							</div>
							<div class="col-sm-3">
								<input type="text" class="form-control" placeholder="日" />
							</div>
						</div>

						<div class="mb10">
							<label class="control-label">电子邮件 <span class="asterisk">*</span></label> 
							<input type="text" name="email" class="form-control" />
						</div>
						<br />

						<button class="btn btn-success btn-block">注册</button>
					</form>
				</div>
				<!-- col-sm-6 -->

			</div>
			<!-- row -->

			<div class="signup-footer">
				<div class="pull-left">&copy; 2015. All Rights Reserved. Ipro</div>
				<div class="pull-right">Created By: <a href="#" target="_blank">weiq</a>
				</div>
			</div>

		</div>
		<!-- signuppanel -->

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
	<script src="${ctx}/static/js/select2.min.js"></script>

	<script src="${ctx}/static/js/custom.js"></script>
	<script>
    jQuery(document).ready(function(){
        
        jQuery(".select2").select2({
            width: '100%',
            minimumResultsForSearch: -1
        });
        
        jQuery("#inputForm").validate({
			rules: {
				username: {
					remote: "${ctx}/register/checkUsername"
				}
			},
			messages: {
				username: {
					remote: "用户登录名已存在"
				}
			}
		});
    });
</script>

</body>
</html>
