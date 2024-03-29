﻿<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>Email</title>
</head>

<body>

	<div class="pageheader">
		<h2>
			<i class="fa fa-envelope"></i> Email <span>Subtitle goes here...</span>
		</h2>
		<div class="breadcrumb-wrapper">
			<span class="label">You are here:</span>
			<ol class="breadcrumb">
				<li><a href="index.html">Bracket</a></li>
				<li class="active">Email</li>
			</ol>
		</div>
	</div>

	<div class="contentpanel panel-email">

		<div class="row">
			<div class="col-sm-3 col-lg-2">
				<a href="compose.html"
					class="btn btn-danger btn-block btn-compose-email">Compose
					Email</a>

				<ul class="nav nav-pills nav-stacked nav-email">
					<li class="active"><a href="email.html"> <span
							class="badge pull-right">2</span> <i
							class="glyphicon glyphicon-inbox"></i> Inbox
					</a></li>
					<li><a href="#"><i class="glyphicon glyphicon-star"></i>
							Starred</a></li>
					<li><a href="#"><i class="glyphicon glyphicon-send"></i>
							Sent Mail</a></li>
					<li><a href="#"> <span class="badge pull-right">3</span> <i
							class="glyphicon glyphicon-pencil"></i> Draft
					</a></li>
					<li><a href="#"><i class="glyphicon glyphicon-trash"></i>
							Trash</a></li>
				</ul>

				<div class="mb30"></div>

				<h5 class="subtitle">Folders</h5>
				<ul class="nav nav-pills nav-stacked nav-email mb20">
					<li><a href="email.html"> <span class="badge pull-right">2</span>
							<i class="glyphicon glyphicon-folder-open"></i> Conference
					</a></li>
					<li><a href="#"><i class="glyphicon glyphicon-folder-open"></i>
							Newsletter</a></li>
					<li><a href="#"><i class="glyphicon glyphicon-folder-open"></i>
							Invitations</a></li>
					<li><a href="#"> <i
							class="glyphicon glyphicon-folder-open"></i> Promotions
					</a></li>
				</ul>

			</div>
			<!-- col-sm-3 -->

			<div class="col-sm-9 col-lg-10">

				<div class="panel panel-default">
					<div class="panel-body">

						<div class="pull-right">
							<div class="btn-group mr10">
								<button class="btn btn-sm btn-white tooltips" type="button"
									data-toggle="tooltip" title="Archive">
									<i class="glyphicon glyphicon-hdd"></i>
								</button>
								<button class="btn btn-sm btn-white tooltips" type="button"
									data-toggle="tooltip" title="Report Spam">
									<i class="glyphicon glyphicon-exclamation-sign"></i>
								</button>
								<button class="btn btn-sm btn-white tooltips" type="button"
									data-toggle="tooltip" title="Delete">
									<i class="glyphicon glyphicon-trash"></i>
								</button>
							</div>

							<div class="btn-group mr10">
								<div class="btn-group nomargin">
									<button data-toggle="dropdown"
										class="btn btn-sm btn-white dropdown-toggle tooltips"
										type="button" title="Move to Folder">
										<i class="glyphicon glyphicon-folder-close mr5"></i> <span
											class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li><a href="#"><i
												class="glyphicon glyphicon-folder-open mr5"></i> Conference</a></li>
										<li><a href="#"><i
												class="glyphicon glyphicon-folder-open mr5"></i> Newsletter</a></li>
										<li><a href="#"><i
												class="glyphicon glyphicon-folder-open mr5"></i> Invitations</a></li>
										<li><a href="#"><i
												class="glyphicon glyphicon-folder-open mr5"></i> Promotions</a></li>
									</ul>
								</div>
								<div class="btn-group nomargin">
									<button data-toggle="dropdown"
										class="btn btn-sm btn-white dropdown-toggle tooltips"
										type="button" title="Label">
										<i class="glyphicon glyphicon-tag mr5"></i> <span
											class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li><a href="#"><i
												class="glyphicon glyphicon-tag mr5"></i> Web</a></li>
										<li><a href="#"><i
												class="glyphicon glyphicon-tag mr5"></i> Photo</a></li>
										<li><a href="#"><i
												class="glyphicon glyphicon-tag mr5"></i> Video</a></li>
									</ul>
								</div>
							</div>

							<div class="btn-group">
								<button class="btn btn-sm btn-white" type="button">
									<i class="glyphicon glyphicon-chevron-left"></i>
								</button>
								<button class="btn btn-sm btn-white" type="button">
									<i class="glyphicon glyphicon-chevron-right"></i>
								</button>
							</div>
						</div>
						<!-- pull-right -->

						<h5 class="subtitle mb5">Inbox</h5>
						<p class="text-muted">Showing 1 - 15 of 230 messages</p>

						<div class="table-responsive">
							<table class="table table-email">
								<tbody>
									<tr class="unread">
										<td>
											<div class="ckbox ckbox-success">
												<input type="checkbox" id="checkbox1"> <label
													for="checkbox1"></label>
											</div>
										</td>
										<td><a href="" class="star"><i
												class="glyphicon glyphicon-star"></i></a></td>
										<td>
											<div class="media">
												<a href="#" class="pull-left"> <img alt=""
													src="${ctx}/static/images/photos/user3.png" class="media-object">
												</a>
												<div class="media-body">
													<span class="media-meta pull-right">Today at 7:30am</span>
													<h4 class="text-primary">Zaham Sindilmaca</h4>
													<small class="text-muted"></small>
													<p class="email-summary">
														<strong>UI Status</strong> Ut enim ad minim veniam, quis
														nostrud exercitation...
													</p>
												</div>
											</div>
										</td>
									</tr>
									<tr class="unread">
										<td>
											<div class="ckbox ckbox-success">
												<input type="checkbox" id="checkbox2"> <label
													for="checkbox2"></label>
											</div>
										</td>
										<td><a href="" class="star"><i
												class="glyphicon glyphicon-star"></i></a></td>
										<td>
											<div class="media">
												<a href="#" class="pull-left"> <img alt=""
													src="${ctx}/static/images/photos/user2.png" class="media-object">
												</a>
												<div class="media-body">
													<span class="media-meta pull-right">Yesterday at
														1:30am</span>
													<h4 class="text-primary">Nusja Nawancali</h4>
													<small class="text-muted"></small>
													<p class="email-summary">
														<strong>Meeting Reminder</strong> Ut enim ad minim veniam,
														quis nostrud exercitation...
													</p>
												</div>
											</div>
										</td>
									</tr>

									<tr>
										<td>
											<div class="ckbox ckbox-success">
												<input type="checkbox" id="checkbox3"> <label
													for="checkbox3"></label>
											</div>
										</td>
										<td><a href="" class="star"><i
												class="glyphicon glyphicon-star"></i></a></td>
										<td>
											<div class="media">
												<a href="#" class="pull-left"> <img alt=""
													src="${ctx}/static/images/photos/user1.png" class="media-object">
												</a>
												<div class="media-body">
													<span class="media-meta pull-right">Jan 13 at 7:30am</span>
													<h4 class="text-primary">Weno Carasbong</h4>
													<small class="text-muted"></small>
													<p class="email-summary">
														<strong>User Interface Conference</strong> Ut enim ad
														minim veniam, quis nostrud exercitation...
													</p>
												</div>
											</div>
										</td>
									</tr>

									<tr>
										<td>
											<div class="ckbox ckbox-success">
												<input type="checkbox" id="checkbox4"> <label
													for="checkbox4"></label>
											</div>
										</td>
										<td><a href="" class="star"><i
												class="glyphicon glyphicon-star"></i></a></td>
										<td>
											<div class="media">
												<a href="#" class="pull-left"> <img alt=""
													src="${ctx}/static/images/photos/user5.png" class="media-object">
												</a>
												<div class="media-body">
													<span class="media-meta pull-right">Jan 12 at 5:30am</span>
													<h4 class="text-primary">Venro Leonga</h4>
													<small class="text-muted"></small>
													<p class="email-summary">
														<strong>Mobile Banking Transaction</strong> Ut enim ad
														minim veniam, quis nostrud exercitation...
													</p>
												</div>
											</div>
										</td>
									</tr>

									<tr>
										<td>
											<div class="ckbox ckbox-success">
												<input type="checkbox" id="checkbox5"> <label
													for="checkbox5"></label>
											</div>
										</td>
										<td><a href="" class="star"><i
												class="glyphicon glyphicon-star"></i></a></td>
										<td>
											<div class="media">
												<a href="#" class="pull-left"> <img alt=""
													src="${ctx}/static/images/photos/user4.png" class="media-object">
												</a>
												<div class="media-body">
													<span class="media-meta pull-right">Jan 12 at 5:30am</span>
													<h4 class="text-primary">Yanda Cerona</h4>
													<small class="text-muted"></small>
													<p class="email-summary">
														<strong>Last Chance For Insurance</strong> Ut enim ad
														minim veniam, quis nostrud exercitation...
													</p>
												</div>
											</div>
										</td>
									</tr>

									<tr>
										<td>
											<div class="ckbox ckbox-success">
												<input type="checkbox" id="checkbox6"> <label
													for="checkbox6"></label>
											</div>
										</td>
										<td><a href="" class="star"><i
												class="glyphicon glyphicon-star"></i></a></td>
										<td>
											<div class="media">
												<a href="#" class="pull-left"> <img alt=""
													src="${ctx}/static/images/photos/user3.png" class="media-object">
												</a>
												<div class="media-body">
													<span class="media-meta pull-right">Jan 13 at 7:30am</span>
													<h4 class="text-primary">Zaham Sindilmaca</h4>
													<small class="text-muted"></small>
													<p class="email-summary">
														<strong>UI Status</strong> Ut enim ad minim veniam, quis
														nostrud exercitation...
													</p>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="ckbox ckbox-success">
												<input type="checkbox" id="checkbox7"> <label
													for="checkbox7"></label>
											</div>
										</td>
										<td><a href="" class="star"><i
												class="glyphicon glyphicon-star"></i></a></td>
										<td>
											<div class="media">
												<a href="#" class="pull-left"> <img alt=""
													src="${ctx}/static/images/photos/user2.png" class="media-object">
												</a>
												<div class="media-body">
													<span class="media-meta pull-right">Jan 13 at 7:30am</span>
													<h4 class="text-primary">Nusja Nawancali</h4>
													<small class="text-muted"></small>
													<p class="email-summary">
														<strong>Meeting Reminder</strong> Ut enim ad minim veniam,
														quis nostrud exercitation...
													</p>
												</div>
											</div>
										</td>
									</tr>

									<tr>
										<td>
											<div class="ckbox ckbox-success">
												<input type="checkbox" id="checkbox8"> <label
													for="checkbox8"></label>
											</div>
										</td>
										<td><a href="" class="star"><i
												class="glyphicon glyphicon-star"></i></a></td>
										<td>
											<div class="media">
												<a href="#" class="pull-left"> <img alt=""
													src="${ctx}/static/images/photos/user1.png" class="media-object">
												</a>
												<div class="media-body">
													<span class="media-meta pull-right">Jan 13 at 7:30am</span>
													<h4 class="text-primary">Weno Carasbong</h4>
													<small class="text-muted"></small>
													<p class="email-summary">
														<strong>User Interface Conference</strong> Ut enim ad
														minim veniam, quis nostrud exercitation...
													</p>
												</div>
											</div>
										</td>
									</tr>

									<tr>
										<td>
											<div class="ckbox ckbox-success">
												<input type="checkbox" id="checkbox9"> <label
													for="checkbox9"></label>
											</div>
										</td>
										<td><a href="" class="star"><i
												class="glyphicon glyphicon-star"></i></a></td>
										<td>
											<div class="media">
												<a href="#" class="pull-left"> <img alt=""
													src="${ctx}/static/images/photos/user5.png" class="media-object">
												</a>
												<div class="media-body">
													<span class="media-meta pull-right">Jan 12 at 5:30am</span>
													<h4 class="text-primary">Venro Leonga</h4>
													<small class="text-muted"></small>
													<p class="email-summary">
														<strong>Mobile Banking Transaction</strong> Ut enim ad
														minim veniam, quis nostrud exercitation...
													</p>
												</div>
											</div>
										</td>
									</tr>

									<tr>
										<td>
											<div class="ckbox ckbox-success">
												<input type="checkbox" id="checkbox10"> <label
													for="checkbox10"></label>
											</div>
										</td>
										<td><a href="" class="star"><i
												class="glyphicon glyphicon-star"></i></a></td>
										<td>
											<div class="media">
												<a href="#" class="pull-left"> <img alt=""
													src="${ctx}/static/images/photos/user4.png" class="media-object">
												</a>
												<div class="media-body">
													<span class="media-meta pull-right">Jan 12 at 5:30am</span>
													<h4 class="text-primary">Yanda Cerona</h4>
													<small class="text-muted"></small>
													<p class="email-summary">
														<strong>Last Chance For Insurance</strong> Ut enim ad
														minim veniam, quis nostrud exercitation...
													</p>
												</div>
											</div>
										</td>
									</tr>

									<tr>
										<td>
											<div class="ckbox ckbox-success">
												<input type="checkbox" id="checkbox11"> <label
													for="checkbox11"></label>
											</div>
										</td>
										<td><a href="" class="star"><i
												class="glyphicon glyphicon-star"></i></a></td>
										<td>
											<div class="media">
												<a href="#" class="pull-left"> <img alt=""
													src="${ctx}/static/images/photos/user3.png" class="media-object">
												</a>
												<div class="media-body">
													<span class="media-meta pull-right">Jan 13 at 7:30am</span>
													<h4 class="text-primary">Zaham Sindilmaca</h4>
													<small class="text-muted"></small>
													<p class="email-summary">
														<strong>UI Status</strong> Ut enim ad minim veniam, quis
														nostrud exercitation...
													</p>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="ckbox ckbox-success">
												<input type="checkbox" id="checkbox12"> <label
													for="checkbox12"></label>
											</div>
										</td>
										<td><a href="" class="star"><i
												class="glyphicon glyphicon-star"></i></a></td>
										<td>
											<div class="media">
												<a href="#" class="pull-left"> <img alt=""
													src="${ctx}/static/images/photos/user2.png" class="media-object">
												</a>
												<div class="media-body">
													<span class="media-meta pull-right">Jan 13 at 7:30am</span>
													<h4 class="text-primary">Nusja Nawancali</h4>
													<small class="text-muted"></small>
													<p class="email-summary">
														<strong>Meeting Reminder</strong> Ut enim ad minim veniam,
														quis nostrud exercitation...
													</p>
												</div>
											</div>
										</td>
									</tr>

									<tr>
										<td>
											<div class="ckbox ckbox-success">
												<input type="checkbox" id="checkbox13"> <label
													for="checkbox13"></label>
											</div>
										</td>
										<td><a href="" class="star"><i
												class="glyphicon glyphicon-star"></i></a></td>
										<td>
											<div class="media">
												<a href="#" class="pull-left"> <img alt=""
													src="${ctx}/static/images/photos/user1.png" class="media-object">
												</a>
												<div class="media-body">
													<span class="media-meta pull-right">Jan 13 at 7:30am</span>
													<h4 class="text-primary">Weno Carasbong</h4>
													<small class="text-muted"></small>
													<p class="email-summary">
														<strong>User Interface Conference</strong> Ut enim ad
														minim veniam, quis nostrud exercitation...
													</p>
												</div>
											</div>
										</td>
									</tr>

									<tr>
										<td>
											<div class="ckbox ckbox-success">
												<input type="checkbox" id="checkbox14"> <label
													for="checkbox14"></label>
											</div>
										</td>
										<td><a href="" class="star"><i
												class="glyphicon glyphicon-star"></i></a></td>
										<td>
											<div class="media">
												<a href="#" class="pull-left"> <img alt=""
													src="${ctx}/static/images/photos/user5.png" class="media-object">
												</a>
												<div class="media-body">
													<span class="media-meta pull-right">Jan 12 at 5:30am</span>
													<h4 class="text-primary">Venro Leonga</h4>
													<small class="text-muted"></small>
													<p class="email-summary">
														<strong>Mobile Banking Transaction</strong> Ut enim ad
														minim veniam, quis nostrud exercitation...
													</p>
												</div>
											</div>
										</td>
									</tr>

									<tr>
										<td>
											<div class="ckbox ckbox-success">
												<input type="checkbox" id="checkbox15"> <label
													for="checkbox15"></label>
											</div>
										</td>
										<td><a href="" class="star"><i
												class="glyphicon glyphicon-star"></i></a></td>
										<td>
											<div class="media">
												<a href="#" class="pull-left"> <img alt=""
													src="${ctx}/static/images/photos/user4.png" class="media-object">
												</a>
												<div class="media-body">
													<span class="media-meta pull-right">Jan 12 at 5:30am</span>
													<h4 class="text-primary">Yanda Cerona</h4>
													<small class="text-muted"></small>
													<p class="email-summary">
														<strong>Last Chance For Insurance</strong> Ut enim ad
														minim veniam, quis nostrud exercitation...
													</p>
												</div>
											</div>
										</td>
									</tr>

								</tbody>
							</table>
						</div>
						<!-- table-responsive -->

					</div>
					<!-- panel-body -->
				</div>
				<!-- panel -->

			</div>
			<!-- col-sm-9 -->

		</div>
		<!-- row -->

	</div>

	<script src="${ctx }/static/js/custom.js"></script>
	<script>
    jQuery(document).ready(function(){
        
        "use strict"
    
        //Check
        jQuery('.ckbox input').click(function(){
            var t = jQuery(this);
            if(t.is(':checked')){
                t.closest('tr').addClass('selected');
            } else {
                t.closest('tr').removeClass('selected');
            }
        });
        
        // Star
        jQuery('.star').click(function(){
            if(!jQuery(this).hasClass('star-checked')) {
                jQuery(this).addClass('star-checked');
            }
            else
                jQuery(this).removeClass('star-checked');
            return false;
        });
        
        // Read mail
        jQuery('.table-email .media').click(function(){
            location.href="${ctx}/demo/read.html";
        });
        
    });
</script>

</body>
</html>
