<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/common/taglibs.jspf"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>${op}用户</title>
    </head>
    <body>
        <div class="pageheader">
            <h2><i class="fa fa-pencil"></i> ${op}用户 <span>请在此添写用户的基本资料,如用户名,邮箱等重要信息.</span></h2>
            <div class="breadcrumb-wrapper">
                <span class="label">您的位置:</span>
                <ol class="breadcrumb">
                    <li><a href="index.html">IPro</a></li>
                    <li><a href="#">用户列表</a></li>
                    <li class="active">${op}用户</li>
                </ol>
            </div>
        </div>
        
        <div class="contentpanel">
			<form:form id="editForm" method="post" commandName="m" cssClass="form-horizontal">
				<cun:showGlobalError commandName="m"/>
				<form:hidden path="id"/>
        		<form:hidden path="deleted"/>
        		<form:hidden path="salt"/>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">用户表单</h4>
					</div>
					<div class="panel-body">
						<div class="form-group">
							<label class="col-sm-2 control-label">用户名 <span class="asterisk">*</span></label>
							<div class="col-sm-6">
								<form:input type="text" path="username" cssClass="form-control" placeholder="5到20个汉字、字母、数字或下划线" required="required" />
							</div>
		                </div>
		                <div class="form-group">
							<label class="col-sm-2 control-label">邮箱 <span class="asterisk">*</span></label>
							<div class="col-sm-6">
								<form:input type="email" path="email" cssClass="form-control" placeholder="weiq@163.com" required="required" />
							</div>
		                </div>
						<div class="form-group">
							<label class="col-sm-2 control-label">手机号 <span class="asterisk">*</span></label>
							<div class="col-sm-6">
								<form:input  path="mobilePhoneNumber" cssClass="form-control" placeholder="11位手机号码" required="required"/>
							</div>
		                </div>
		                <c:choose>
			                <c:when test="${op eq '新增'}">
			                	<div class="form-group">
									<label class="col-sm-2 control-label">初始密码 <span class="asterisk">*</span></label>
									<div class="col-sm-6">
										<form:input type="password" path="password" cssClass="form-control" 
											placeholder="请输入至少5位的初始密码" required="required" minlength="5" />
									</div>
				                </div>
			                </c:when>
			                <c:otherwise>
			                    <form:hidden path="password"/>
			                </c:otherwise>
			            </c:choose>
			            
			            <div class="form-group">
							<label class="col-sm-2 control-label">组织机构</label>
							<div class="col-sm-6">
								<select name="organizationId" class="organizationId" data-placeholder="选择用户组织机构">
					            	<option value=""></option>
			                  		<option value="United States">United States</option>
			                  		<option value="United Kingdom">United Kingdom</option>
			                  		<option value="Afghanistan">Afghanistan</option>
			                  		<option value="Aland Islands">Aland Islands</option>
								</select>
							</div>
		                </div>
		                
		                <div class="form-group">
							<label class="col-sm-2 control-label">工作职务</label>
							<div class="col-sm-6">
								<select name="jobId" class="jobId" multiple data-placeholder="选择用户工作职务">
		                  			<option value=""></option>
		                  			<option value="United States">United States</option>
		                  			<option value="United Kingdom">United Kingdom</option>
		                  			<option value="Afghanistan">Afghanistan</option>
		                  		</select>
							</div>
		                </div>
			            
						<div class="form-group">
							<label class="col-sm-2 control-label">管理员 <span class="asterisk">*</span></label>
							<div class="col-sm-6">
                    			<form:radiobuttons element="div class='rdio rdio-primary'"  path="admin" items="${booleanList}" itemLabel="info" itemValue="value"/>
                  			</div>
                		</div>
                		<div class="form-group">
							<label class="col-sm-2 control-label">状态 <span class="asterisk">*</span></label>
							<div class="col-sm-6">
                    			<form:radiobuttons element="div class='rdio rdio-primary'"  path="status" items="${statusList}" itemLabel="info"/>
                  			</div>
                		</div>
					</div><!-- panel-body -->
					<div class="panel-footer">
						<div class="row">
							<div class="col-sm-9 col-sm-offset-2">
								<button class="btn btn-primary">提交</button>
								<button type="reset" class="btn btn-default">重置</button>
							</div>
						</div>
					</div>
				</div><!-- panel -->
			</form:form>
        </div>
        
		<script src="${ctx}/static/js/custom.js"></script>
		<script src="${ctx}/static/js/select2.min.js"></script>
		<script src="${ctx}/static/js/jquery.validate.min.js"></script>
		<script src="${ctx}/static/js/i18n/jquery.validate.messages_cn.js"></script>
		<script src="${ctx}/static/js/jquery-validate/validate.method.js"></script>
        <script type="text/javascript">
        
        $(function(){
            "use strict";

			var validator = $("#editForm").validate({
				highlight: function(element) {
					$(element).closest('.form-group').removeClass('has-success').addClass('has-error');
				},
				success: function(element) {
					$(element).closest('.form-group').removeClass('has-error');
				},
				rules: {
				    mobilePhoneNumber: { //custom rule
				        isMobile: true
			        }
			    }
			});
			
			$.ajax({
                type : "GET",
                url : "${ctx}/admin/sys/organization/organization/ajax/load",
                success : function (data) {
                    
                }
            });
			
			$(".jobId,.organizationId").select2({
			    //minimumResultsForSearch: Infinity,
				width: '100%',
				allowClear: true
			});
			
			<cun:showFieldError commandName="m"/>
        });
        </script>
    </body>
</html>
