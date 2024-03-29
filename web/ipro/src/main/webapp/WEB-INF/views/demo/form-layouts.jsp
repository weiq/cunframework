﻿<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Form Layouts</title>
</head>
<body>
    <div class="pageheader">
      <h2><i class="fa fa-pencil"></i> Form Layouts <span>Subtitle goes here...</span></h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="index.html">Bracket</a></li>
          <li><a href="general-forms.html">Forms</a></li>
          <li class="active">Form Layouts</li>
        </ol>
      </div>
    </div>
    
    <div class="contentpanel">
      
      <div class="panel panel-default">
        <div class="panel-heading">
          <div class="panel-btns">
            <a href="" class="panel-close">&times;</a>
            <a href="" class="minimize">&minus;</a>
          </div>
          <h4 class="panel-title">Inline Form</h4>
          <p>Basic form with a class name of <code>.form-inline</code>.</p>
        </div>
        <div class="panel-body">
          <form class="form-inline">
            <div class="form-group">
              <label class="sr-only" for="exampleInputEmail2">Email address</label>
              <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Enter email">
            </div>
            <div class="form-group">
              <label class="sr-only" for="exampleInputPassword2">Password</label>
              <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password">
            </div>
            <div class="checkbox">
              <label>
                <input type="checkbox"> Remember me
              </label>
            </div>
            <button type="submit" class="btn btn-primary">Sign In</button>
            <button type="reset" class="btn btn-default">Reset</button>
          </form>
        </div><!-- panel-body -->
      </div><!-- panel -->
      
      <div class="row">
        <div class="col-md-6">
          
          <form id="form1" class="form-horizontal">
            <div class="panel panel-default">
              <div class="panel-heading">
                <div class="panel-btns">
                  <a href="" class="panel-close">&times;</a>
                  <a href="" class="minimize">&minus;</a>
                </div>
                <h4 class="panel-title">Horizontal Form</h4>
                <p>Basic form with a class name of <code>.form-horizontal</code>.</p>
              </div>
              <div class="panel-body">
              
                <div class="form-group">
                  <label class="col-sm-4 control-label">Name:</label>
                  <div class="col-sm-8">
                    <input type="text" name="name" class="form-control" />
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-sm-4 control-label">Email:</label>
                  <div class="col-sm-8">
                    <input type="email" name="email" class="form-control" />
                  </div>
                </div>
              </div><!-- panel-body -->
              <div class="panel-footer">
                <button class="btn btn-primary">Submit</button>
                <button type="reset" class="btn btn-default">Reset</button>
              </div><!-- panel-footer -->
            </div><!-- panel-default -->
          </form>
            
        </div><!-- col-md-6 -->
        
        <div class="col-md-6">
          
          <form id="form2" class="form-horizontal form-bordered">
            <div class="panel panel-default">
              <div class="panel-heading">
                <div class="panel-btns">
                  <a href="" class="panel-close">&times;</a>
                  <a href="" class="minimize">&minus;</a>
                </div>
                <h4 class="panel-title">Bordered Form</h4>
                <p>Basic form with a class name of <code>.form-bordered</code>.</p>
              </div>
              <div class="panel-body panel-body-nopadding">
              
                <div class="form-group">
                  <label class="col-sm-4 control-label">Name:</label>
                  <div class="col-sm-8">
                    <input type="text" name="name" class="form-control" />
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-sm-4 control-label">Email:</label>
                  <div class="col-sm-8">
                    <input type="email" name="email" class="form-control" />
                  </div>
                </div>
              </div><!-- panel-body -->
              <div class="panel-footer">
                <button class="btn btn-primary">Submit</button>
                <button type="reset" class="btn btn-default">Reset</button>
              </div><!-- panel-footer -->
            </div><!-- panel-default -->
          </form>
            
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
              <h4 class="panel-title">No Label Form</h4>
              <p>This is an example of a form using a placeholder instead of label.</p>
            </div>
            <form>
            <div class="panel-body">
              <div class="row row-pad-5">
                <div class="col-lg-4">
                  <input type="text" name="name" placeholder="Name" class="form-control" />
                </div>
                <div class="col-lg-4">
                  <input type="email" name="email" placeholder="Email" class="form-control" />
                </div>
                <div class="col-lg-4">
                  <input type="url" name="website" placeholder="Website" class="form-control" />
                </div>
              </div><!-- row -->
              <textarea class="form-control" rows="5" placeholder="Message"></textarea>
            </div><!-- panel-body -->
            <div class="panel-footer">
              <button class="btn btn-primary">Add Comment</button>
            </div>
            </form>
          </div><!-- panel -->
        </div>
        
        <div class="col-md-6">
          <div class="panel panel-default">
            <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div>
              <h4 class="panel-title">Block Styled Form</h4>
              <p>This is an example of form with block styled label.</p>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="col-sm-6">
                  <div class="form-group">
                    <label class="control-label">Firstname</label>
                    <input type="text" name="firstname" class="form-control" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-6">
                  <div class="form-group">
                    <label class="control-label">Lastname</label>
                    <input type="text" name="lastname" class="form-control" />
                  </div>
                </div><!-- col-sm-6 -->
              </div><!-- row -->
              
              <div class="row">
                <div class="col-sm-6">
                  <div class="form-group">
                    <label class="control-label">Email</label>
                    <input type="email" name="email" class="form-control" />
                  </div>
                </div><!-- col-sm-6 -->
                <div class="col-sm-6">
                  <div class="form-group">
                    <label class="control-label">Website</label>
                    <input type="url" name="website" class="form-control" />
                  </div>
                </div><!-- col-sm-6 -->
              </div><!-- row -->
              
            </div><!-- panel-body -->
            <div class="panel-footer">
              <button class="btn btn-primary">Submit Card</button>
            </div>
          </div>
        </div>
        
      </div><!-- row -->
      
    </div>
	<script src="${ctx}/static/js/custom.js"></script>
</body>
</html>
