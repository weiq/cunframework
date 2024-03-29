﻿<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Form Wizards</title>
</head>
<body>
    <div class="pageheader">
      <h2><i class="fa fa-pencil"></i> Form Wizards <span>Subtitle goes here...</span></h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="index.html">Bracket</a></li>
          <li><a href="general-forms.html">Forms</a></li>
          <li class="active">Form Wizards</li>
        </ol>
      </div>
    </div>
    
    <div class="contentpanel">
      
      <div class="row">
        <div class="col-md-6">
          <div class="panel panel-default">
            <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div>
              <h4 class="panel-title">Basic Wizard</h4>
              <p>This basic wizard have no form validation and allows you to skip to another step by clicking on the tab.</p>
            </div>
            <div class="panel-body panel-body-nopadding">
              
              <!-- BASIC WIZARD -->
              <div id="basicWizard" class="basic-wizard">
                
                <ul class="nav nav-pills nav-justified">
                  <li><a href="#tab1" data-toggle="tab"><span>Step 1:</span> Basic Info</a></li>
                  <li><a href="#tab2" data-toggle="tab"><span>Step 2:</span> Product Info</a></li>
                  <li><a href="#tab3" data-toggle="tab"><span>Step 3:</span> Payment</a></li>
                </ul>
                
                <div class="tab-content">
                  <div class="tab-pane" id="tab1">
                    <form class="form">
                      <div class="form-group">
                        <label class="col-sm-4">Firstname</label>
                        <div class="col-sm-8">
                          <input type="text" name="firstname" class="form-control" />
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="col-sm-4">Lastname</label>
                        <div class="col-sm-8">
                          <input type="text" name="lastname" class="form-control" />
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="col-sm-4">Gender</label>
                        <div class="col-sm-8">
                          <div class="rdio rdio-primary">
                            <input type="radio" checked="checked" id="male" value="m" name="radio">
                            <label for="male">Male</label>
                          </div>
                          <div class="rdio rdio-primary">
                            <input type="radio" value="f" id="female" name="radio">
                            <label for="female">Female</label>
                          </div>
                        </div>
                      </div>
                      
                    </form>
                  </div>
                  <div class="tab-pane" id="tab2">
                    <form class="form">
                      <div class="form-group">
                        <label class="col-sm-4">Product ID</label>
                        <div class="col-sm-5">
                          <input type="text" name="product_id" class="form-control" />
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="col-sm-4">Product Name</label>
                        <div class="col-sm-8">
                          <input type="text" name="product_name" class="form-control" />
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="col-sm-4">Category</label>
                        <div class="col-sm-4">
                          <select class="select2" data-placeholder="Choose One">
                            <option value=""></option>
                            <option value="">3D Animation</option>
                            <option value="">Web Design</option>
                            <option value="">Software Engineering</option>
                          </select>
                        </div>
                      </div>
                      
                    </form>
                  </div>
                  <div class="tab-pane" id="tab3">
                    <form class="form">
                      <div class="form-group">
                        <label class="col-sm-4">Card No</label>
                        <div class="col-sm-8">
                          <input type="text" name="cardno" class="form-control" />
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="col-sm-4">Expiration</label>
                        <div class="col-sm-4">
                          <select class="select2">
                            <option value="">Month</option>
                            <option value="">January</option>
                            <option value="">February</option>
                            <option value="">March</option>
                            <option value="">...</option>
                          </select>
                        </div>
                        
                        <div class="col-sm-4">
                          <select class="select2">
                            <option value="">Year</option>
                            <option value="">2013</option>
                            <option value="">2014</option>
                            <option value="">2015</option>
                            <option value="">...</option>
                          </select>
                        </div>
                        
                      </div>
                      
                      <div class="form-group">
                        <label class="col-sm-4">CSV</label>
                        <div class="col-sm-4">
                          <input type="text" name="csv" class="form-control" />
                        </div>
                      </div>
                      
                    </form>
                  </div>
                  
                  
                </div><!-- tab-content -->
                
                <ul class="pager wizard">
                    <li class="previous"><a href="javascript:void(0)">Previous</a></li>
                    <li class="next"><a href="javascript:void(0)">Next</a></li>
                  </ul>
                
              </div><!-- #basicWizard -->
              
            </div><!-- panel-body -->
          </div><!-- panel -->
        </div><!-- col-md-6 -->
        
        <div class="col-md-6">
          <div class="panel panel-default">
            <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div>
              <h4 class="panel-title">Wizard With Progress Bar</h4>
              <p>Same with basic wizard setup but with progress bar.</p>
            </div>
            <div class="panel-body panel-body-nopadding">
              
              <!-- BASIC WIZARD -->
              <div id="progressWizard" class="basic-wizard">
                
                <ul class="nav nav-pills nav-justified">
                  <li><a href="#ptab1" data-toggle="tab"><span>Step 1:</span> Basic Info</a></li>
                  <li><a href="#ptab2" data-toggle="tab"><span>Step 2:</span> Product Info</a></li>
                  <li><a href="#ptab3" data-toggle="tab"><span>Step 3:</span> Payment</a></li>
                </ul>
                  
                <div class="tab-content">
                  
                  <div class="progress progress-striped active">
                    <div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  
                  <div class="tab-pane" id="ptab1">
                    <form class="form">
                      <div class="form-group">
                        <label class="col-sm-4">Firstname</label>
                        <div class="col-sm-8">
                          <input type="text" name="firstname" class="form-control" />
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="col-sm-4">Lastname</label>
                        <div class="col-sm-8">
                          <input type="text" name="lastname" class="form-control" />
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="col-sm-4">Gender</label>
                        <div class="col-sm-8">
                          <div class="rdio rdio-primary">
                            <input type="radio" checked="checked" id="male2" value="m" name="radio">
                            <label for="male2">Male</label>
                          </div>
                          <div class="rdio rdio-primary">
                            <input type="radio" value="f" id="female2" name="radio">
                            <label for="female2">Female</label>
                          </div>
                        </div>
                      </div>
                      
                    </form>
                  </div>
                  <div class="tab-pane" id="ptab2">
                    <form class="form">
                      <div class="form-group">
                        <label class="col-sm-4">Product ID</label>
                        <div class="col-sm-5">
                          <input type="text" name="product_id" class="form-control" />
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="col-sm-4">Product Name</label>
                        <div class="col-sm-8">
                          <input type="text" name="product_name" class="form-control" />
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="col-sm-4">Category</label>
                        <div class="col-sm-4">
                          <select class="select2">
                            <option value="">Choose One</option>
                            <option value="">3D Animation</option>
                            <option value="">Web Design</option>
                            <option value="">Software Engineering</option>
                          </select>
                        </div>
                      </div>
                      
                    </form>
                  </div>
                  <div class="tab-pane" id="ptab3">
                    <form class="form">
                      <div class="form-group">
                        <label class="col-sm-4">Card No</label>
                        <div class="col-sm-8">
                          <input type="text" name="cardno" class="form-control" />
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="col-sm-4">Expiration</label>
                        <div class="col-sm-4">
                          <select class="select2">
                            <option value="">Month</option>
                            <option value="">January</option>
                            <option value="">February</option>
                            <option value="">March</option>
                            <option value="">...</option>
                          </select>
                        </div>
                        
                        <div class="col-sm-4">
                          <select class="select2">
                            <option value="">Year</option>
                            <option value="">2013</option>
                            <option value="">2014</option>
                            <option value="">2015</option>
                            <option value="">...</option>
                          </select>
                        </div>
                        
                      </div>
                      
                      <div class="form-group">
                        <label class="col-sm-4">CSV</label>
                        <div class="col-sm-4">
                          <input type="text" name="csv" class="form-control" />
                        </div>
                      </div>
                      
                    </form>
                  </div>
                  
                  
                </div><!-- tab-content -->
                
                <ul class="pager wizard">
                    <li class="previous"><a href="javascript:void(0)">Previous</a></li>
                    <li class="next"><a href="javascript:void(0)">Next</a></li>
                  </ul>
                
              </div><!-- #basicWizard -->
              
            </div><!-- panel-body -->
          </div><!-- panel -->
        </div><!-- col-md-6 -->
        
      </div><!-- row -->
      
      <div class="row">
        <div class="col-md-6">
          <div class="panel panel-default">
            <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div>
              <h4 class="panel-title">Wizard With Disabled Tab Click</h4>
            </div>
            <div class="panel-body panel-body-nopadding">
              
              <!-- BASIC WIZARD -->
              <div id="disabledTabWizard" class="basic-wizard">
                
                <ul class="nav nav-pills nav-justified">
                  <li><a href="#dtab1" data-toggle="tab"><span>Step 1:</span> Basic Info</a></li>
                  <li><a href="#dtab2" data-toggle="tab"><span>Step 2:</span> Product Info</a></li>
                  <li><a href="#dtab3" data-toggle="tab"><span>Step 3:</span> Payment</a></li>
                </ul>
                
                <div class="tab-content">
                  <div class="tab-pane" id="dtab1">
                    <form class="form">
                      <div class="form-group">
                        <label class="col-sm-4">Firstname</label>
                        <div class="col-sm-8">
                          <input type="text" name="firstname" class="form-control" />
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="col-sm-4">Lastname</label>
                        <div class="col-sm-8">
                          <input type="text" name="lastname" class="form-control" />
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="col-sm-4">Gender</label>
                        <div class="col-sm-8">
                          <div class="rdio rdio-primary">
                            <input type="radio" checked="checked" id="male3" value="m" name="radio">
                            <label for="male3">Male</label>
                          </div>
                          <div class="rdio rdio-primary">
                            <input type="radio" value="f" id="female3" name="radio">
                            <label for="female3">Female</label>
                          </div>
                        </div>
                      </div>
                      
                    </form>
                  </div>
                  <div class="tab-pane" id="dtab2">
                    <form class="form">
                      <div class="form-group">
                        <label class="col-sm-4">Product ID</label>
                        <div class="col-sm-5">
                          <input type="text" name="product_id" class="form-control" />
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="col-sm-4">Product Name</label>
                        <div class="col-sm-8">
                          <input type="text" name="product_name" class="form-control" />
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="col-sm-4">Category</label>
                        <div class="col-sm-4">
                          <select class="select2">
                            <option value="">Choose One</option>
                            <option value="">3D Animation</option>
                            <option value="">Web Design</option>
                            <option value="">Software Engineering</option>
                          </select>
                        </div>
                      </div>
                      
                    </form>
                  </div>
                  <div class="tab-pane" id="dtab3">
                    <form class="form">
                      <div class="form-group">
                        <label class="col-sm-4">Card No</label>
                        <div class="col-sm-8">
                          <input type="text" name="cardno" class="form-control" />
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="col-sm-4">Expiration</label>
                        <div class="col-sm-4">
                          <select class="select2">
                            <option value="">Month</option>
                            <option value="">January</option>
                            <option value="">February</option>
                            <option value="">March</option>
                            <option value="">...</option>
                          </select>
                        </div>
                        
                        <div class="col-sm-4">
                          <select class="select2">
                            <option value="">Year</option>
                            <option value="">2013</option>
                            <option value="">2014</option>
                            <option value="">2015</option>
                            <option value="">...</option>
                          </select>
                        </div>
                        
                      </div>
                      
                      <div class="form-group">
                        <label class="col-sm-4">CSV</label>
                        <div class="col-sm-4">
                          <input type="text" name="csv" class="form-control" />
                        </div>
                      </div>
                      
                    </form>
                  </div>
                  
                  
                </div><!-- tab-content -->
                
                <ul class="pager wizard">
                    <li class="previous"><a href="javascript:void(0)">Previous</a></li>
                    <li class="next"><a href="javascript:void(0)">Next</a></li>
                  </ul>
                
              </div><!-- #disabledTabWizard -->
              
            </div><!-- panel-body -->
          </div><!-- panel -->
        </div><!-- col-md-6 -->
        
        <div class="col-md-6">
          <div class="panel panel-default">
            <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div>
              <h4 class="panel-title">Wizard With Form Validation</h4>
            </div>
            <div class="panel-body panel-body-nopadding">
              
              <!-- BASIC WIZARD -->
              <div id="validationWizard" class="basic-wizard">
                
                <ul class="nav nav-pills nav-justified">
                  <li><a href="#vtab1" data-toggle="tab"><span>Step 1:</span> Basic Info</a></li>
                  <li><a href="#vtab2" data-toggle="tab"><span>Step 2:</span> Product Info</a></li>
                  <li><a href="#vtab3" data-toggle="tab"><span>Step 3:</span> Payment</a></li>
                </ul>
                
                <form class="form" id="firstForm">  
                <div class="tab-content">
                  
                  <div class="tab-pane" id="vtab1">
                      <div class="form-group">
                        <label class="col-sm-4 control-label">Firstname</label>
                        <div class="col-sm-8">
                          <input type="text" name="firstname" class="form-control" required />
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="col-sm-4 control-label">Lastname</label>
                        <div class="col-sm-8">
                          <input type="text" name="lastname" class="form-control" required />
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="col-sm-4 control-label">Gender</label>
                        <div class="col-sm-8">
                          <div class="rdio rdio-primary">
                            <input type="radio" id="male4" value="m" name="gender" required />
                            <label for="male4">Male</label>
                          </div>
                          <div class="rdio rdio-primary">
                            <input type="radio" value="f" id="female4" name="gender"/>
                            <label for="female4">Female</label>
                          </div>
                          <label class="error" for="gender"></label>
                        </div>
                      </div>
                      
                  </div>
                  <div class="tab-pane" id="vtab2">
                      <div class="form-group">
                        <label class="col-sm-4 control-label">Product ID</label>
                        <div class="col-sm-5">
                          <input type="text" name="product_id" class="form-control" required />
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="col-sm-4 control-label">Product Name</label>
                        <div class="col-sm-8">
                          <input type="text" name="product_name" class="form-control" required />
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="col-sm-4 control-label">Category</label>
                        <div class="col-sm-4">
                          <select class="select" data-placeholder="Choose One" required>
                            <option value=""></option>
                            <option value="3d">3D Animation</option>
                            <option value="web">Web Design</option>
                            <option value="software">Software Engineering</option>
                          </select>
                        </div>
                      </div>
                    
                  </div>
                  
                  <div class="tab-pane" id="vtab3">
                      <div class="form-group">
                        <label class="col-sm-4 control-label">Card No</label>
                        <div class="col-sm-8">
                          <input type="text" name="cardno" class="form-control" />
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="col-sm-4 control-label">Expiration</label>
                        <div class="col-sm-4">
                          <select class="select2" data-placeholder="Month">
                            <option value=""></option>
                            <option value="">January</option>
                            <option value="">February</option>
                            <option value="">March</option>
                            <option value="">...</option>
                          </select>
                        </div>
                        
                        <div class="col-sm-4">
                          <select class="select2" data-placeholder="Year">
                            <option value=""></option>
                            <option value="">2013</option>
                            <option value="">2014</option>
                            <option value="">2015</option>
                            <option value="">...</option>
                          </select>
                        </div>
                        
                      </div>
                      
                      <div class="form-group">
                        <label class="col-sm-4 control-label">CSV</label>
                        <div class="col-sm-4">
                          <input type="text" name="csv" class="form-control" />
                        </div>
                      </div>
                      
                  </div>
                  
                  
                </div><!-- tab-content -->
                </form>
                
                <ul class="pager wizard">
                    <li class="previous"><a href="javascript:void(0)">Previous</a></li>
                    <li class="next"><a href="javascript:void(0)">Next</a></li>
                  </ul>
                
              </div><!-- #validationWizard -->
              
            </div><!-- panel-body -->
          </div><!-- panel -->
        </div><!-- col-md-6 -->
        
      </div><!-- row -->
      
    </div><!-- contentpanel -->
	<script src="${ctx}/static/js/bootstrap-wizard.min.js"></script>
	<script src="${ctx}/static/js/select2.min.js"></script>
	<script src="${ctx}/static/js/jquery.validate.min.js"></script>
	
	<script src="${ctx}/static/js/custom.js"></script>
	<script>
	jQuery(document).ready(function(){
	    "use strict";
	  // Basic Wizard
	  jQuery('#basicWizard').bootstrapWizard();
	  
	  // Progress Wizard
	  $('#progressWizard').bootstrapWizard({
	    'nextSelector': '.next',
	    'previousSelector': '.previous',
	    onNext: function(tab, navigation, index) {
	      var $total = navigation.find('li').length;
	      var $current = index+1;
	      var $percent = ($current/$total) * 100;
	      jQuery('#progressWizard').find('.progress-bar').css('width', $percent+'%');
	    },
	    onPrevious: function(tab, navigation, index) {
	      var $total = navigation.find('li').length;
	      var $current = index+1;
	      var $percent = ($current/$total) * 100;
	      jQuery('#progressWizard').find('.progress-bar').css('width', $percent+'%');
	    },
	    onTabShow: function(tab, navigation, index) {
	      var $total = navigation.find('li').length;
	      var $current = index+1;
	      var $percent = ($current/$total) * 100;
	      jQuery('#progressWizard').find('.progress-bar').css('width', $percent+'%');
	    }
	  });
	  
	  // Disabled Tab Click Wizard
	  jQuery('#disabledTabWizard').bootstrapWizard({
	    tabClass: 'nav nav-pills nav-justified nav-disabled-click',
	    onTabClick: function(tab, navigation, index) {
	      return false;
	    }
	  });
	  
	  // With Form Validation Wizard
	  var $validator = jQuery("#firstForm").validate({
	    highlight: function(element) {
	      jQuery(element).closest('.form-group').removeClass('has-success').addClass('has-error');
	    },
	    success: function(element) {
	      jQuery(element).closest('.form-group').removeClass('has-error');
	    }
	  });
	  
	  jQuery('#validationWizard').bootstrapWizard({
	    tabClass: 'nav nav-pills nav-justified nav-disabled-click',
	    onTabClick: function(tab, navigation, index) {
	      return false;
	    },
	    onNext: function(tab, navigation, index) {
	      var $valid = jQuery('#firstForm').valid();
	      if(!$valid) {
	        
	        $validator.focusInvalid();
	        return false;
	      }
	    }
	  });
	  
	  jQuery(".select2").select2({
	    width: '100%',
	    minimumResultsForSearch: -1
	  });
	  
	  
	});
	</script>
</body>
</html>
