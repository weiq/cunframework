<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/common/taglibs.jspf"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>用户列表</title>
        <link href="${ctx}/static/js/zTree/css/metroStyle/metroStyle.css?2" rel="stylesheet" >
        <link href="${ctx}/static/css/jquery.datatables.css" rel="stylesheet">
        <style type="text/css">
        	.lh35{
        		line-height: 35px;
        	}
        	.table_filter{
        		display:none;
        	}
        </style>
    </head>
    <body>
        <div class="pageheader">
            <h2><i class="fa fa-home"></i> 用户列表 <span>欢迎使用ipro后台管理软件</span></h2>
            <div class="breadcrumb-wrapper">
                <span class="label">您的位置:</span>
                <ol class="breadcrumb">
                    <li><a href="index.html">IPro</a></li>
                    <li class="active">用户列表</li>
                </ol>
            </div>
        </div>
        
        <div class="contentpanel">
            <div class="row">
            	<div class="col-sm-2">
		            <div class="panel panel-default">
		                <div class="panel-heading">
		                    <div class="panel-btns">
		                        <a href="#" class="panel-edit">
		                        	<i class="fa fa-edit"></i>
		                        </a>
		                        <a href="" class="minimize">−</a>
		                    </div>
		                    <h3 class="panel-title">部门结构</h3>
		                </div>
		                <div class="panel-body">
		                	<!-- 组织机构树 -->
		                	<ul id="organizationTree" class="ztree"></ul>
		                </div>
		            </div>
	            </div>
	            <div class="col-sm-10">
	            	<div class="panel panel-default">
		                <div class="panel-heading">
		                    <div class="pull-right" style="margin-top: -6px;">
		                    	<div class="pull-left mr10">
			                        <a href="${ctx}/admin/sys/user/create" class="btn btn-sm btn-white tooltips btn-create" type="button"
											data-toggle="tooltip" title="新增">
										<i class="glyphicon glyphicon-plus-sign"></i> 新增
									</a>
									<a class="btn btn-sm btn-white tooltips btn-update" type="button"
											data-toggle="tooltip" title="修改">
										<i class="glyphicon glyphicon-exclamation-sign"></i> 修改
									</a>
									<button class="btn btn-sm btn-white tooltips btn-delete" type="button"
											data-toggle="tooltip" title="删除">
										<i class="glyphicon glyphicon-trash"></i> 删除
									</button>
								</div>
								<%-- 当拥有所有权限时才能使用  --%>
								<div class="pull-left mr10">
									<div class="btn-group nomargin">
										<button data-toggle="dropdown"
											class="btn btn-sm btn-white dropdown-toggle tooltips"
											type="button" title="更多操作">
											<i class="fa fa-ellipsis-h mr5"></i> 更多
											<span class="caret"></span>
										</button>
										<ul class="dropdown-menu">
											<li><a href="#"><i class="glyphicon glyphicon-tag mr5"></i> 修改密码</a></li>
											<li><a href="#"><i class="glyphicon glyphicon-tag mr5"></i> 封禁用户</a></li>
											<li><a href="#"><i class="glyphicon glyphicon-tag mr5"></i> 解封用户</a></li>
											<li><a href="#"><i class="glyphicon glyphicon-tag mr5"></i> 恢复用户</a></li>
											<li><a href="#"><i class="glyphicon glyphicon-tag mr5"></i> 变更历史</a></li>
											<li><a href="#"><i class="glyphicon glyphicon-tag mr5"></i> 在线历史</a></li>
										</ul>
									</div>
								</div>
								
								<div class="btn-group">
									<button class="btn btn-sm btn-white tooltips" type="button"
											data-toggle="tooltip" title="上一页">
										<i class="glyphicon glyphicon-chevron-left"></i>
									</button>
									<button class="btn btn-sm btn-white tooltips" type="button"
											data-toggle="tooltip" title="下一页">
										<i class="glyphicon glyphicon-chevron-right"></i>
									</button>
								</div>
		                    </div>
		                    <h3 class="panel-title">用户列表</h3>
		                </div>
		                <div class="panel-body">
		                	<div class="table-responsive">
								<table id="table" class="table table-striped " cellspacing="0" width="100%">
									<thead>
										<tr>
						                    <th>ID</th>
								            <th>用户名</th>
								            <th>邮箱</th>
								            <th>手机号</th>
								            <th>创建时间</th>
								            <th>帐户状态</th>
								            <th>管理员</th>
						                </tr>
						            </thead>
						            <tbody>
							        <c:forEach items="${page.content}" var="m">
							            <tr>
							                <td>
							                    <a href="${ctx}/admin/sys/user/${m.id}">${m.id}</a>
							                </td>
							                <td>${m.username}</td>
							                <td>${m.email}</td>
							                <td>${m.mobilePhoneNumber}</td>
							                <td><spring:eval expression="m.createDate"/></td>
							                <td>${m.status.info}</td>
							                <td>${m.admin?'是' : '否'}</td>
							            </tr>
							        </c:forEach>
							        </tbody>
							    </table>
							</div>
		                </div>
		            </div>
	            </div>
            </div>
        </div>
        
		<script src="${ctx}/static/js/custom.js"></script>
        <script src="${ctx}/static/js/zTree/js/jquery.ztree.all-3.5.js?3"></script>
        <script src="${ctx}/static/js/jquery.datatables.min.js"></script>
        <script src="${ctx}/static/js/i18n/jquery.datatables.message_cn.js"></script>
        <script src="${ctx}/static/sys/user/user.js"></script>
        <script type="text/javascript">
        </script>
    </body>
</html>
