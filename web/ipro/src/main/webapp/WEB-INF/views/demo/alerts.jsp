﻿<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>Alerts</title>
<link href="${ctx }/static/css/jquery.gritter.css" rel="stylesheet">
</head>
<body>
	<div class="pageheader">
		<h2>
			<i class="fa fa-bell"></i> Alerts &amp; Notifications <span>Subtitle
				goes here...</span>
		</h2>
		<div class="breadcrumb-wrapper">
			<span class="label">You are here:</span>
			<ol class="breadcrumb">
				<li><a href="index.html">Bracket</a></li>
				<li><a href="buttons.html">UI Elements</a></li>
				<li class="active">Alerts &amp; Notifications</li>
			</ol>
		</div>
	</div>

	<div class="contentpanel">

		<div class="row">

			<div class="col-md-6">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="panel-btns">
							<a href="" class="panel-close">&times;</a> <a href=""
								class="minimize">&minus;</a>
						</div>
						<!-- panel-btns -->
						<h4 class="panel-title">Modal Box</h4>
						<p>Modals are streamlined, but flexible, dialog prompts with
							the minimum required functionality and smart defaults.</p>
					</div>
					<!-- panel-heading -->
					<div class="panel-body">

						<!-- Button trigger modal -->
						<button class="btn btn-primary btn-lg mb10" data-toggle="modal"
							data-target="#myModal">Launch Modal</button>
						<p>
							You can view more examples in using modals in <a href="modals.html">here</a>
						</p>
					</div>
				</div>
				<!-- panel -->

				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="panel-btns">
							<a href="" class="panel-close">&times;</a> <a href=""
								class="minimize">&minus;</a>
						</div>
						<!-- panel-btns -->
						<h4 class="panel-title">Tooltips</h4>
						<p>The tooltip is a common graphical ui element. The user
							hovers the pointer over an item, without clicking it, and a
							tooltip may appear.</p>
					</div>
					<!-- panel-heading -->
					<div class="panel-body">

						<div class="tooltip-example">
							<button title="Tooltip on right" data-placement="right"
								data-toggle="tooltip" class="btn btn-default tooltips"
								type="button">Tooltip Right</button>
							<button title="" data-placement="left" data-toggle="tooltip"
								class="btn btn-default tooltips" type="button"
								data-original-title="Tooltip on left">Tooltip Left</button>
							<button title="Tooltip on top" data-placement="top"
								data-toggle="tooltip" class="btn btn-default tooltips"
								type="button">Tooltip Top</button>
							<button title="Tooltip on bottom" data-placement="bottom"
								data-toggle="tooltip" class="btn btn-default tooltips"
								type="button">Tooltip Bottom</button>
						</div>

					</div>
				</div>
				<!-- panel -->

				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="panel-btns">
							<a href="" class="panel-close">&times;</a> <a href=""
								class="minimize">&minus;</a>
						</div>
						<!-- panel-btns -->
						<h4 class="panel-title">Popovers</h4>
						<p>Add small overlays of content, like those on the iPad, to
							any element for housing secondary information.</p>
					</div>
					<!-- panel-heading -->
					<div class="panel-body">

						<div class="popover-example">
							<button
								data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus."
								data-placement="left" data-toggle="popover"
								data-container="body" class="btn btn-default popovers"
								type="button" data-original-title="" title="">Popover
								Left</button>
							<button
								data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus."
								data-placement="top" data-toggle="popover" data-container="body"
								class="btn btn-default popovers" type="button"
								data-original-title="" title="">Popover Top</button>
							<button
								data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus."
								data-placement="bottom" data-toggle="popover"
								data-container="body" class="btn btn-default popovers"
								type="button" data-original-title="" title="">Popover
								Bottom</button>
							<button
								data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus."
								data-placement="right" data-toggle="popover"
								data-container="body" class="btn btn-default popovers"
								type="button" data-original-title="" title="">Popover
								Right</button>
						</div>

					</div>
				</div>
				<!-- panel -->

			</div>
			<!-- col-md-6 -->

			<div class="col-md-6">

				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="panel-btns">
							<a href="" class="panel-close">&times;</a> <a href=""
								class="minimize">&minus;</a>
						</div>
						<!-- panel-btns -->
						<h4 class="panel-title">Alert Messages</h4>
						<p>Provide contextual feedback messages for typical user
							actions with the handful of available and flexible alert
							messages.</p>
					</div>
					<!-- panel-heading -->
					<div class="panel-body">

						<div class="alert alert-success">
							<button type="button" class="close" data-dismiss="alert"
								aria-hidden="true">&times;</button>
							<strong>Well done!</strong> You successfully read this <a href=""
								class="alert-link">important alert message</a>.
						</div>

						<div class="alert alert-info">
							<button type="button" class="close" data-dismiss="alert"
								aria-hidden="true">&times;</button>
							<strong>Heads up!</strong> This <a href="" class="alert-link">alert
								needs your attention</a>, but it's not super important.
						</div>

						<div class="alert alert-warning">
							<button type="button" class="close" data-dismiss="alert"
								aria-hidden="true">&times;</button>
							<strong>Warning!</strong> Best check yo self, you're <a href=""
								class="alert-link">not looking too good</a>.
						</div>

						<div class="alert alert-danger">
							<button type="button" class="close" data-dismiss="alert"
								aria-hidden="true">&times;</button>
							<strong>Oh snap!</strong> Change a <a href="" class="alert-link">few
								things</a> up and try submitting again.
						</div>

						<div class="alert alert-info fade in nomargin">
							<button aria-hidden="true" data-dismiss="alert" class="close"
								type="button">&times;</button>
							<h4>Announcements!</h4>
							<p>Change this and that and try again. Duis mollis, est non
								commodo luctus, nisi erat porttitor ligula, eget lacinia odio
								sem nec elit. Cras mattis consectetur purus sit amet fermentum.</p>
							<p>
								<button class="btn btn-info" type="button">Take this
									action</button>
								<button class="btn btn-white" type="button">Or do this</button>
							</p>
						</div>

					</div>
				</div>
				<!-- panel -->

			</div>
			<!-- col-md-6 -->

		</div>
		<!-- row -->

		<div class="row">

			<div class="col-md-6">

				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="panel-btns">
							<a href="" class="panel-close">&times;</a> <a href=""
								class="minimize">&minus;</a>
						</div>
						<!-- panel-btns -->
						<h4 class="panel-title">Growl Notifications</h4>
						<p>Growl is a jQuery plugin designed to provide informative
							messages in the browser.</p>
					</div>
					<!-- panel-heading -->
					<div class="panel-body">
						<a href="" class="btn btn-default mr5" id="growl1">Growl With
							Image</a> <a href="" class="btn btn-default" id="growl2">Growl
							Without Image</a>
						<div class="mb10"></div>
						<a href="" class="btn btn-primary mr5 mb10" id="growl-primary">Primary</a>
						<a href="" class="btn btn-success mr5 mb10" id="growl-success">Success</a>
						<a href="" class="btn btn-warning mr5 mb10" id="growl-warning">Warning</a>
						<a href="" class="btn btn-danger mr5 mb10" id="growl-danger">Danger</a>
						<a href="" class="btn btn-info mb10" id="growl-info">Info</a>
					</div>
				</div>
				<!-- panel -->

			</div>
			<!-- col-md-6 -->

			<div class="col-md-6">&nbsp;</div>
			<!-- col-md-6 -->

		</div>
		<!-- row -->

	</div>
	<!-- contentpanel -->



	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">Modal title</h4>
				</div>
				<div class="modal-body">Content goes here...</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
			<!-- modal-content -->
		</div>
		<!-- modal-dialog -->
	</div>
	<!-- modal -->

	<script src="${ctx }/static/js/jquery.gritter.min.js"></script>
	<script src="${ctx }/static/js/custom.js"></script>
	<script>
jQuery(document).ready(function() {
    
    "use strict";
    
  jQuery('#growl1').click(function(){

	 jQuery.gritter.add({
		// (string | mandatory) the heading of the notification
		title: 'This is a regular notice!',
		// (string | mandatory) the text inside the notification
		text: 'This will fade out after a certain amount of time.',
		// (string | optional) the image to display on the left
		image: '${ctx}/static/images/screen.png',
		// (bool | optional) if you want it to fade out on its own or just sit there
		sticky: false,
		// (int | optional) the time you want it to be alive for before fading out
		time: ''
	 });

	 return false;

  });
  
  jQuery('#growl2').click(function(){
	 jQuery.gritter.add({
		title: 'This is a regular notice!',
		text: 'This will fade out after a certain amount of time.',
		sticky: false,
		time: ''
	 });
	 return false;
  });
  
  jQuery('#growl-primary').click(function(){
	 jQuery.gritter.add({
		title: 'This is a regular notice!',
		text: 'This will fade out after a certain amount of time.',
      class_name: 'growl-primary',
      image: '${ctx}/static/images/screen.png',
		sticky: false,
		time: ''
	 });
	 return false;
  });
  
  jQuery('#growl-success').click(function(){
	 jQuery.gritter.add({
		title: 'This is a regular notice!',
		text: 'This will fade out after a certain amount of time.',
      class_name: 'growl-success',
      image: '${ctx}/static/images/screen.png',
		sticky: false,
		time: ''
	 });
	 return false;
  });
  
  jQuery('#growl-warning').click(function(){
	 jQuery.gritter.add({
		title: 'This is a regular notice!',
		text: 'This will fade out after a certain amount of time.',
      class_name: 'growl-warning',
      image: '${ctx}/static/images/screen.png',
		sticky: false,
		time: ''
	 });
	 return false;
  });
  
  jQuery('#growl-danger').click(function(){
	 jQuery.gritter.add({
		title: 'This is a regular notice!',
		text: 'This will fade out after a certain amount of time.',
      class_name: 'growl-danger',
      image: '${ctx}/static/images/screen.png',
		sticky: false,
		time: ''
	 });
	 return false;
  });
  
  jQuery('#growl-info').click(function(){
	 jQuery.gritter.add({
		title: 'This is a regular notice!',
		text: 'This will fade out after a certain amount of time.',
      class_name: 'growl-info',
      image: '${ctx}/static/images/screen.png',
		sticky: false,
		time: ''
	 });
	 return false;
  });

});
</script>

</body>
</html>
