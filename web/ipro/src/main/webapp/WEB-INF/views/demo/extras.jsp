﻿<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Extras</title>
</head>
<body>
    <div class="pageheader">
      <h2><i class="fa fa-star"></i> Extras <span>Subtitle goes here...</span></h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="index.html">Bracket</a></li>
          <li><a href="buttons.html">UI Elements</a></li>
          <li class="active">Extras</li>
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
              </div><!-- panel-btns -->
              <h4 class="panel-title">Pagination</h4>
              <p>Provide pagination links for your site or app with the multi-page pagination component.</p>
            </div><!-- panel-heading -->
            <div class="panel-body">
              <h5 class="subtitle mb5">Default Pagination</h5>
              <p>Simple pagination inspired by Rdio, great for apps and search results.</p>
              <ul class="pagination">
                <li class="disabled"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                <li><a href="#">1</a></li>
                <li class="active"><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
              </ul>
              
              <div class="mb5"></div>
              
              <h5 class="subtitle mb5">Split Pagination</h5>
              <p>Links are split to each other by adding a class of <code>.pagination-split</code></p>
              <ul class="pagination pagination-split">
                <li class="disabled"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                <li><a href="#">1</a></li>
                <li class="active"><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
              </ul>
              
              <div class="mb5"></div>
              
              <h5 class="subtitle mb5">Sizing</h5>
              <p>Add <code>.pagination-lg</code> or <code>.pagination-sm</code> for additional sizes.</p>
              <ul class="pagination pagination-lg mb5">
                <li class="disabled"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                <li><a href="#">1</a></li>
                <li class="active"><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
              </ul>
              
            </div>
          </div><!-- panel -->
        </div><!-- col-md-6 -->
        
        <div class="col-md-6">
          <div class="panel panel-default">
            <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div><!-- panel-btns -->
              <h4 class="panel-title">Pager</h4>
              <p>Quick previous and next links for simple pagination implementations with light markup and styles.</p>
            </div><!-- panel-heading -->
            <div class="panel-body">
              <h5 class="subtitle mb5">Default</h5>
              <p>By default, the pager centers links.</p>
              <ul class="pager">
                <li><a href="#"><i class="fa fa-angle-left"></i> Previous</a></li>
                <li><a href="#">Next <i class="fa fa-angle-right"></i></a></li>
              </ul>
              
              <div class="clearfix mb20"></div>
              
              <h5 class="subtitle mb5">Aligned Links</h5>
              <p>Alternatively, you can align each link to the sides:</p>
              <ul class="pager">
                <li class="previous"><a href="#">&larr; Older</a></li>
                <li class="next"><a href="#">Newer &rarr;</a></li>
              </ul>
              
              <div class="clearfix mb20"></div>
              
              <h5 class="subtitle mb5">Optional Disabled State</h5>
              <p>Pager links also use the general <code>.disabled</code> utility class from the pagination.</p>
              <ul class="pager">
                <li class="previous disabled"><a href="#">&larr; Older</a></li>
                <li class="next"><a href="#">Newer &rarr;</a></li>
              </ul>

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
              </div><!-- panel-btns -->
              <h4 class="panel-title">Progress Bars</h4>
              <p>Provide up-to-date feedback on the progress of a workflow or action with simple yet flexible progress bars.</p>
            </div><!-- panel-heading -->
            <div class="panel-body">
              
              <h5 class="subtitle">Basic Progress</h5>
              <p>Default progress bar. Progress bars use some of the same button and alert classes for consistent styles.</p>
              <div class="progress">
                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                  <span class="sr-only">40% Complete (success)</span>
                </div>
              </div>
              <div class="progress">
                <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                  <span class="sr-only">20% Complete</span>
                </div>
              </div>
              <div class="progress">
                <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                  <span class="sr-only">60% Complete (warning)</span>
                </div>
              </div>
              <div class="progress">
                <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                  <span class="sr-only">80% Complete</span>
                </div>
              </div>
              
              <br />
              
              <h5 class="subtitle">Striped Progress</h5>
              <p>Uses a gradient to create a striped effect. Not available in IE8</p>
              <div class="progress progress-striped">
                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                  <span class="sr-only">40% Complete (success)</span>
                </div>
              </div>
              
              <br />
              
              <h5 class="subtitle">Animated Progress</h5>
              <p>Add <code>.active</code> to <code>.progress-striped</code> to animate the stripes right to left. Not available in all versions of IE.</p>
              <div class="progress progress-striped active">
                <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                  <span class="sr-only">40% Complete (success)</span>
                </div>
              </div>
              
            </div><!-- panel-body -->
          </div><!-- panel -->
          
          <div class="panel panel-default">
            <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div><!-- panel-btns -->
              <h4 class="panel-title">Ajax Loader Images</h4>
            </div><!-- panel-heading -->
            <div class="panel-body">
              
              <div class="loaders">
                <img src="${ctx}/static/images/loaders/loader1.gif" alt="" />
                <img src="${ctx}/static/images/loaders/loader2.gif" alt="" />
                <img src="${ctx}/static/images/loaders/loader3.gif" alt="" />
                <img src="${ctx}/static/images/loaders/loader4.gif" alt="" />
                <img src="${ctx}/static/images/loaders/loader8.gif" alt="" />
                <img src="${ctx}/static/images/loaders/loader9.gif" alt="" />
                <img src="${ctx}/static/images/loaders/loader5.gif" alt="" />
                <img src="${ctx}/static/images/loaders/loader6.gif" alt="" />
                <img src="${ctx}/static/images/loaders/loader7.gif" alt="" />
                <img src="${ctx}/static/images/loaders/loader10.gif" alt="" />
                <img src="${ctx}/static/images/loaders/loader11.gif" alt="" />
                <img src="${ctx}/static/images/loaders/loader12.gif" alt="" />
                <img src="${ctx}/static/images/loaders/loader13.gif" alt="" />
                <img src="${ctx}/static/images/loaders/loader14.gif" alt="" />
                <img src="${ctx}/static/images/loaders/loader15.gif" alt="" />
                <img src="${ctx}/static/images/loaders/loader16.gif" alt="" />
                <img src="${ctx}/static/images/loaders/loader17.gif" alt="" />
                <img src="${ctx}/static/images/loaders/loader18.gif" alt="" />
                <img src="${ctx}/static/images/loaders/loader19.gif" alt="" />
                <img src="${ctx}/static/images/loaders/loader20.gif" alt="" />
                <img src="${ctx}/static/images/loaders/loader21.gif" alt="" />
                <img src="${ctx}/static/images/loaders/loader22.gif" alt="" />
                <img src="${ctx}/static/images/loaders/loader23.gif" alt="" />
                <img src="${ctx}/static/images/loaders/loader24.gif" alt="" />
                <img src="${ctx}/static/images/loaders/loader25.gif" alt="" />
                <img src="${ctx}/static/images/loaders/loader26.gif" alt="" />
                <img src="${ctx}/static/images/loaders/loader27.gif" alt="" />
                <img src="${ctx}/static/images/loaders/loader28.gif" alt="" />
                <img src="${ctx}/static/images/loaders/loader29.gif" alt="" />
                <img src="${ctx}/static/images/loaders/loader30.gif" alt="" />                            
              </div><!--loaders-->
               
            </div>
          </div><!-- panel -->
          
        </div><!-- col-md-6 -->
        
        <div class="col-md-6">
            <div class="panel panel-default">
            <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div><!-- panel-btns -->
              <h4 class="panel-title">Labels &amp; Badges</h4>
            </div><!-- panel-heading -->
            <div class="panel-body">
              
              <h5 class="subtitle">Labels</h5>
              <p>Add any of the below mentioned modifier classes to change the appearance of a label.</p>
              <span class="label label-default">Default</span>
              <span class="label label-primary">Primary</span>
              <span class="label label-success">Success</span>
              <span class="label label-info">Info</span>
              <span class="label label-warning">Warning</span>
              <span class="label label-danger">Danger</span>
              
              <br /><br />
              
              <h5 class="subtitle">Badges</h5>
              <p>Easily highlight new or unread items by adding below to links, navs, and more.</p>
              <span class="badge">42</span>
              <span class="badge badge-primary">10</span>
              <span class="badge badge-success">28</span>
              <span class="badge badge-warning">90</span>
              <span class="badge badge-danger">33</span>
              <span class="badge badge-info">21</span>
              
              
              <br /><br />
              
              <h5 class="subtitle">Badge Example</h5>
              <p>Adapts to active nav states.</p>
              <ul class="nav nav-pills nav-stacked">
                <li class="active">
                  <a href="#">
                    <span class="badge pull-right">42</span>
                    Home
                  </a>
                </li>
                <li><a href="#">Profile</a></li>
                <li>
                  <a href="#">
                    <span class="badge pull-right">3</span>
                    Messages
                  </a>
                </li>
              </ul>
              
            </div>
          </div><!-- panel -->
          
        </div><!-- col-md-6 -->
        
      </div>
            
    </div><!-- contentpanel -->

	<script src="${ctx}/static/js/custom.js"></script>

</body>
</html>
