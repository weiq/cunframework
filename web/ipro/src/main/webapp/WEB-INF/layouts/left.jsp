<%@ page language="java" pageEncoding="UTF-8" %>
<div class="leftpanel">
	<div class="logopanel">
		<h1><span>[</span> IPro <span>]</span></h1>
	</div><!-- logopanel -->

	<div class="leftpanelinner">

		<!-- 将在小屏幕设备下显示 -->
		<div class="visible-xs hidden-sm hidden-md hidden-lg">
			<div class="media userlogged">
				<img alt="" src="${ctx }/static/images/photos/loggeduser.png" class="media-object">
				<div class="media-body">
					<h4>John Doe</h4>
					<span>"Life is so..."</span>
				</div>
			</div>

			<h5 class="sidebartitle actitle">Account</h5>
			<ul class="nav nav-pills nav-stacked nav-bracket mb30">
				<li><a href="profile.html"><i class="fa fa-user"></i> <span>Profile</span></a></li>
				<li><a href=""><i class="fa fa-cog"></i> <span>Account Settings</span></a></li>
				<li><a href=""><i class="fa fa-question-circle"></i> <span>Help</span></a></li>
				<li><a href="${ctx }/demo/signin.html"><i class="fa fa-sign-out"></i> <span>Sign Out</span></a></li>
			</ul>
		</div>

		<h5 class="sidebartitle">导航菜单</h5>
		<ul class="nav nav-pills nav-stacked nav-bracket">
			<li class="active"><a href="${ctx }/demo/index.html"><i class="fa fa-home"></i> <span>仪表板</span></a></li>
			<li><a href="${ctx }/demo/email.html"><span class="pull-right badge badge-success">2</span><i class="fa fa-envelope-o"></i> <span>电子邮件</span></a></li>
			<li class="nav-parent"><a href=""><i class="fa fa-edit"></i> <span>Forms</span></a>
				<ul class="children">
					<li><a href="${ctx }/demo/general-forms.html"><i class="fa fa-caret-right"></i> General Forms</a></li>
					<li><a href="${ctx }/demo/form-layouts.html"><i class="fa fa-caret-right"></i> Form Layouts</a></li>
					<li><a href="${ctx }/demo/form-validation.html"><i class="fa fa-caret-right"></i> Form Validation</a></li>
					<li><a href="${ctx }/demo/form-wizards.html"><i class="fa fa-caret-right"></i> Form Wizards</a></li>
					<li><a href="${ctx }/demo/wysiwyg.html"><i class="fa fa-caret-right"></i> Text Editor</a></li>
					<li><a href="${ctx }/demo/code-editor.html"><i class="fa fa-caret-right"></i> Code Editor</a></li>
					<li><a href="${ctx }/demo/x-editable.html"><i class="fa fa-caret-right"></i> X-Editable</a></li>
				</ul>
			</li>
			<li class="nav-parent"><a href=""><i class="fa fa-suitcase"></i> <span>UI Elements</span></a>
				<ul class="children">
					<li><a href="${ctx }/demo/buttons.html"><i class="fa fa-caret-right"></i> Buttons</a></li>
					<li><a href="${ctx }/demo/icons.html"><span class="pull-right badge badge-danger">updated</span><i class="fa fa-caret-right"></i> Icons</a></li>
					<li><a href="${ctx }/demo/typography.html"><i class="fa fa-caret-right"></i> Typography</a></li>
					<li><a href="${ctx }/demo/alerts"><i class="fa fa-caret-right"></i> Alerts &amp; Notifications</a></li>
					<li><a href="${ctx }/demo/modals.html"><i class="fa fa-caret-right"></i> Modals</a></li>
					<li><a href="${ctx }/demo/tabs-accordions.html"><i class="fa fa-caret-right"></i> Tabs &amp; Accordions</a></li>
					<li><a href="${ctx }/demo/sliders.html"><i class="fa fa-caret-right"></i> Sliders</a></li>
					<li><a href="${ctx }/demo/graphs.html"><i class="fa fa-caret-right"></i> Graphs &amp; Charts</a></li>
					<li><a href="${ctx }/demo/widgets.html"><i class="fa fa-caret-right"></i> Panels &amp; Widgets</a></li>
					<li><a href="${ctx }/demo/extras.html"><i class="fa fa-caret-right"></i> Extras</a></li>
				</ul>
			</li>
			<li><a href="${ctx }/demo/tables.html"><i class="fa fa-th-list"></i> <span>Tables</span></a></li>
			<li class="nav-parent"><a href=""><i class="fa fa-bug"></i> <span>Bug Tracker</span></a>
				<ul class="children">
					<li><a href="${ctx }/demo/bug-tracker.html"><i class="fa fa-caret-right"></i> Summary</a></li>
					<li><a href="${ctx }/demo/bug-issues.html"><i class="fa fa-caret-right"></i> Issues</a></li>
					<li><a href="${ctx }/demo/view-issue.html"><i class="fa fa-caret-right"></i> View Issue</a></li>
				</ul>
			</li>
			<li><a href="${ctx }/demo/maps.html"><i class="fa fa-map-marker"></i> <span>Maps</span></a></li>
			<li class="nav-parent"><a href=""><i class="fa fa-file-text"></i> <span>Pages</span></a>
				<ul class="children">
					<li><a href="${ctx }/demo/calendar.html"><i class="fa fa-caret-right"></i> Calendar</a></li>
					<li><a href="${ctx }/demo/media-manager.html"><i class="fa fa-caret-right"></i> Media Manager</a></li>
					<li><a href="${ctx }/demo/timeline.html"><i class="fa fa-caret-right"></i> Timeline</a></li>
					<li><a href="${ctx }/demo/blog-list.html"><i class="fa fa-caret-right"></i> Blog List</a></li>
					<li><a href="${ctx }/demo/blog-single.html"><i class="fa fa-caret-right"></i> Blog Single</a></li>
					<li><a href="${ctx }/demo/people-directory.html"><i class="fa fa-caret-right"></i> People Directory</a></li>
					<li><a href="${ctx }/demo/profile.html"><i class="fa fa-caret-right"></i> Profile</a></li>
					<li><a href="${ctx }/demo/invoice.html"><i class="fa fa-caret-right"></i> Invoice</a></li>
					<li><a href="${ctx }/demo/search-results.html"><i class="fa fa-caret-right"></i> Search Results</a></li>
					<li><a href="${ctx }/demo/blank.html"><i class="fa fa-caret-right"></i> Blank Page</a></li>
					<li><a href="${ctx }/demo/notfound.html"><i class="fa fa-caret-right"></i> 404 Page</a></li>
					<li><a href="${ctx }/demo/locked.html"><i class="fa fa-caret-right"></i> Locked Screen</a></li>
					<li><a href="${ctx }/demo/signin.html"><i class="fa fa-caret-right"></i> Sign In</a></li>
					<li><a href="${ctx }/demo/signup.html"><i class="fa fa-caret-right"></i> Sign Up</a></li>
				</ul>
			</li>
			<li class="nav-parent"><a href="${ctx }/demo/layouts.html"><i class="fa fa-laptop"></i> <span>Skins &amp; Layouts</span></a>
				<ul class="children">
					<li><a href="${ctx }/demo/layouts.html"><i class="fa fa-caret-right"></i> General Layouts</a></li>
					<li><a href="${ctx }/demo/horizontal-menu.html"><i class="fa fa-caret-right"></i> Top Menu</a></li>
					<li><a href="${ctx }/demo/horizontal-menu2.html"><i class="fa fa-caret-right"></i> Top Menu w/ Sidebar</a></li>
					<li><a href="${ctx }/demo/fixed-width.html"><i class="fa fa-caret-right"></i> Fixed Width Page</a></li>
					<li><a href="${ctx }/demo/fixed-width2.html"><i class="fa fa-caret-right"></i> Fixed Width w/ Menu</a></li>
				</ul>
			</li>
		</ul>

		<div class="infosummary">
			<h5 class="sidebartitle">Information Summary</h5>
			<ul>
				<li>
					<div class="datainfo">
						<span class="text-muted">Daily Traffic</span>
						<h4>630, 201</h4>
					</div>
					<div id="sidebar-chart" class="chart"></div>
				</li>
				<li>
					<div class="datainfo">
						<span class="text-muted">Average Users</span>
						<h4>1, 332, 801</h4>
					</div>
					<div id="sidebar-chart2" class="chart"></div>
				</li>
				<li>
					<div class="datainfo">
						<span class="text-muted">Disk Usage</span>
						<h4>82.2%</h4>
					</div>
					<div id="sidebar-chart3" class="chart"></div>
				</li>
				<li>
					<div class="datainfo">
						<span class="text-muted">CPU Usage</span>
						<h4>140.05 - 32</h4>
					</div>
					<div id="sidebar-chart4" class="chart"></div>
				</li>
				<li>
					<div class="datainfo">
						<span class="text-muted">Memory Usage</span>
						<h4>32.2%</h4>
					</div>
					<div id="sidebar-chart5" class="chart"></div>
				</li>
			</ul>
		</div><!-- infosummary -->

	</div><!-- leftpanelinner -->
</div><!-- leftpanel -->