<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Form Validation</title>
</head>

<body>
    <div class="pageheader">
      <h2><i class="fa fa-pencil"></i> Form Validation <span>Subtitle goes here...</span></h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="index.html">Bracket</a></li>
          <li><a href="general-forms.html">Forms</a></li>
          <li class="active">Form Validation</li>
        </ol>
      </div>
    </div>
    
    <div class="contentpanel">
      
      <div class="row">
        
        <div class="col-md-6">
          <form id="basicForm" action="${ctx}/demo/form-validation.html" class="form-horizontal">
          <div class="panel panel-default">
              <div class="panel-heading">
                <div class="panel-btns">
                  <a href="" class="panel-close">&times;</a>
                  <a href="" class="minimize">&minus;</a>
                </div>
                <h4 class="panel-title">Basic Form Validation</h4>
                <p>Please provide your name, email address (won't be published) and a comment.</p>
              </div>
              <div class="panel-body">
                <div class="form-group">
                  <label class="col-sm-3 control-label">Name <span class="asterisk">*</span></label>
                  <div class="col-sm-9">
                    <input type="text" name="name" class="form-control" placeholder="Type your name..." required />
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Email <span class="asterisk">*</span></label>
                  <div class="col-sm-9">
                    <input type="email" name="email" class="form-control" placeholder="Type your email..." required />
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">URL</label>
                  <div class="col-sm-9">
                    <input type="url" name="url" class="form-control" />
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Comment <span class="asterisk">*</span></label>
                  <div class="col-sm-9">
                    <textarea rows="5" class="form-control" placeholder="Type your comment..." required></textarea>
                  </div>
                </div>
              </div><!-- panel-body -->
              <div class="panel-footer">
                <div class="row">
                  <div class="col-sm-9 col-sm-offset-3">
                    <button class="btn btn-primary">Submit</button>
                    <button type="reset" class="btn btn-default">Reset</button>
                  </div>
                </div>
              </div>
            
          </div><!-- panel -->
          </form>
          
          
        </div><!-- col-md-6 -->
        
        <div class="col-md-6">
          <form id="basicForm2" action="${ctx}/demo/form-validation.html" class="form-horizontal">
          <div class="panel panel-default">
              <div class="panel-heading">
                <div class="panel-btns">
                  <a href="" class="panel-close">&times;</a>
                  <a href="" class="minimize">&minus;</a>
                </div>
                <h4 class="panel-title">Error Message In One Container</h4>
                <p>Please provide your name, email address (won't be published) and a comment.</p>
              </div>
              <div class="panel-body">
                <div class="error"></div>
                <div class="form-group">
                  <label class="col-sm-3 control-label">Name <span class="asterisk">*</span></label>
                  <div class="col-sm-9">
                    <input type="text" name="name" class="form-control" title="Your name is required!" placeholder="Type your name..." required />
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Email <span class="asterisk">*</span></label>
                  <div class="col-sm-9">
                    <input type="email" name="email" class="form-control" title="Your email address is required!" placeholder="Type your email..." required />
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">URL</label>
                  <div class="col-sm-9">
                    <input type="url" name="url" title="Please enter a valid url!" class="form-control" />
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Comment <span class="asterisk">*</span></label>
                  <div class="col-sm-9">
                    <textarea rows="5" class="form-control" name="comment" title="Please type a comment at least 6 characters long!" placeholder="Type your comment..." required></textarea>
                  </div>
                </div>
              </div><!-- panel-body -->
              <div class="panel-footer">
                <div class="row">
                  <div class="col-sm-9 col-sm-offset-3">
                    <button class="btn btn-primary">Submit</button>
                    <button type="reset" class="btn btn-default">Reset</button>
                  </div>
                </div>
              </div>
            
          </div><!-- panel -->
          </form>
          
        </div><!-- col-md-6 -->
        
      </div><!--row -->
      
      <div class="row">
        
        <div class="col-md-6">
          <form id="basicForm3" action="${ctx}/demo/form-validation.html">
          <div class="panel panel-default">
              <div class="panel-heading">
                <div class="panel-btns">
                  <a href="" class="panel-close">&times;</a>
                  <a href="" class="minimize">&minus;</a>
                </div>
                <h4 class="panel-title">With Checkboxes and Radio Buttons</h4>
                <p>Validating a form with a radio and checkbox buttons.</p>
              </div>
              <div class="panel-body">
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Gender <span class="asterisk">*</span></label>
                  <div class="col-sm-9">
                    <div class="rdio rdio-primary">
                      <input type="radio" id="male" value="m" name="gender" required />
                      <label for="male">Male</label>
                    </div><!-- rdio -->
                    <div class="rdio rdio-primary">
                      <input type="radio" value="f" id="female" name="gender">
                      <label for="female">Female</label>
                    </div><!-- rdio -->
                    <label class="error" for="gender"></label>
                  </div>
                </div><!-- form-group -->
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Interest <span class="asterisk">*</span></label>
                  <div class="col-sm-9">
                    <div class="ckbox ckbox-primary">
                      <input type="checkbox" id="int_website" value="m" name="int[]" required />
                      <label for="int_website">Website</label>
                    </div><!-- rdio -->
                    <div class="ckbox ckbox-primary">
                      <input type="checkbox" value="f" id="int_software" name="int[]" />
                      <label for="int_software">Software</label>
                    </div><!-- rdio -->
                    <div class="ckbox ckbox-primary">
                      <input type="checkbox" value="f" id="int_mobile" name="int[]" />
                      <label for="int_mobile">Mobile</label>
                    </div><!-- rdio -->
                    <label class="error" for="int[]"></label>
                  </div>
                </div><!-- form-group -->
                
              </div><!-- panel-body -->
              <div class="panel-footer">
                <div class="row">
                  <div class="col-sm-9 col-sm-offset-3">
                    <button class="btn btn-primary">Submit</button>
                    <button type="reset" class="btn btn-default">Reset</button>
                  </div>
                </div>
              </div><!-- panel-footer -->
              
          </div><!-- panel -->
          </form>
        </div><!-- col-md-6 -->
        
        <div class="col-md-6">
          <form id="basicForm4" action="form-validation.html">
          <div class="panel panel-default">
              <div class="panel-heading">
                <div class="panel-btns">
                  <a href="" class="panel-close">&times;</a>
                  <a href="" class="minimize">&minus;</a>
                </div>
                <h4 class="panel-title">Validation With Select Boxes</h4>
                <p>Validating a form using select boxes with single or multiple selection.</p>
              </div>
              <div class="panel-body">
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Fruits</label>
                  <div class="col-sm-9">
                    <select id="fruits" class="select2" required data-placeholder="Choose One">
                      <option value=""></option>
                      <option value="apple">Apple</option>
                      <option value="orange">Orange</option>
                      <option value="grapes">Grapes</option>
                      <option value="strawberry">Strawberry</option>
                    </select>
                    <label class="error" for="fruits"></label>
                  </div>
                </div><!-- form-group -->
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Flowers</label>
                  <div class="col-sm-9">
                    <select id="flowers" name="flowers" data-placeholder="Choose One" title="Please select at least 2 flowers" class="select2" multiple required>
                      <option value=""></option>
                      <option value="lily">Lily</option>
                      <option value="jasmine">Jasmine</option>
                      <option value="daisy">Daisy</option>
                      <option value="iris">Iris</option>
                      <option value="rose">Rose</option>
                    </select>
                    <label class="error" for="flowers"></label>
                  </div>
                </div><!-- form-group -->
              
              </div><!-- panel-body -->
              
              <div class="panel-footer">
                <div class="row">
                  <div class="col-sm-9 col-sm-offset-3">
                    <button class="btn btn-primary">Submit</button>
                    <button type="reset" class="btn btn-default">Reset</button>
                  </div>
                </div>
              </div><!-- panel-footer -->
          </div><!-- panel -->
          </form>
         </div><!-- col-md-6 -->
        
      </div><!-- row-->
      
    </div><!-- contentpanel -->
	<script src="${ctx}/static/js/select2.min.js"></script>
	<script src="${ctx}/static/js/jquery.validate.min.js"></script>
	<script src="${ctx}/static/js/custom.js"></script>
	<script>
	jQuery(document).ready(function(){
	    "use strict";
	    // Select2
	  jQuery(".select2").select2({
	    width: '100%',
	    minimumResultsForSearch: -1
	  });
	  
	  // Basic Form
	  jQuery("#basicForm").validate({
	    highlight: function(element) {
	      jQuery(element).closest('.form-group').removeClass('has-success').addClass('has-error');
	    },
	    success: function(element) {
	      jQuery(element).closest('.form-group').removeClass('has-error');
	    }
	  });
	  
	  // Error Message In One Container
	  jQuery("#basicForm2").validate({
		 errorLabelContainer: jQuery("#basicForm2 div.error")
	  });
	  
	  // With Checkboxes and Radio Buttons
	  jQuery("#basicForm3").validate({
	    highlight: function(element) {
	      jQuery(element).closest('.form-group').removeClass('has-success').addClass('has-error');
	    },
	    success: function(element) {
	      jQuery(element).closest('.form-group').removeClass('has-error');
	    }
	  });
	  
	  // Validation with select boxes
	  jQuery("#basicForm4").validate({
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
