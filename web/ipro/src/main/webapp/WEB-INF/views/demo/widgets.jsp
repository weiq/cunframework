﻿<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Panels Widgets</title>
</head>
<body>
    <div class="pageheader">
      <h2><i class="fa fa-laptop"></i> Panels &amp; Widgets <span>Subtitle goes here...</span></h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="index.html">Bracket</a></li>
          <li><a href="buttons.html">UI Elements</a></li>
          <li class="active">Panels &amp; Widgets</li>
        </ol>
      </div>
    </div>
    
    <div class="contentpanel">
      
      <p class="mb20">While not always necessary, sometimes you need to put your DOM in a box. For those situations, try the panel component.</p>
      <h5 class="subtitle mb5">Basic Panel</h5>
      <p class="mb20">By default, all the <code>.panel</code> does is apply some basic border and padding to contain some content.</p>
          
      <div class="panel panel-default">
        <div class="panel-body">
          Basic panel example
        </div>
      </div>
      
      <br />
      
      <div class="row">
        <div class="col-sm-6">
          <h5 class="subtitle mb10">Panel With Heading</h5>
          <p class="mb20">Easily add a heading container to your panel with <code>.panel-heading</code>. You may also include any <code>h1</code> - <code>h6</code> with a <code>.panel-title</code> class to add a pre-styled heading.</p>
          <div class="panel panel-default">
            <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div><!-- panel-btns -->
              <h3 class="panel-title">Panel Title</h3>
            </div>
            <div class="panel-body">
              Panel content
            </div>
          </div><!-- panel -->
        </div><!-- col-sm-6 -->
        
        <div class="col-sm-6">
          <h5 class="subtitle mb10">Panel With Footer</h5>
          <p class="mb20">Wrap content in <code>.panel-footer</code>. Note that panel footers do not inherit colors and borders when using contextual variations as they are not meant to be in the foreground.</p>
          <div class="panel panel-default">
            <div class="panel-body">
              Panel content
            </div><!-- panel-body -->
            <div class="panel-footer">
              Footer content goes here...
            </div><!-- panel-footer -->
          </div><!-- panel -->
        </div><!-- col-sm-6 -->
        
      </div><!-- row -->
      
      <h5 class="subtitle mb5">Contextual Alternatives</h5>
      <p class="mb20">Like other components, easily make a panel more meaningful to a particular context by adding any of the contextual state classes.</p>
      <div class="row">
        <div class="col-sm-6">
          <div class="panel panel-primary">
            <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div><!-- panel-btns -->
              <h3 class="panel-title">Panel Title</h3>
            </div>
            <div class="panel-body">
              Panel content
            </div>
          </div><!-- panel -->
        </div><!-- col-sm-6 -->
        
        <div class="col-sm-6">
          <div class="panel panel-success">
            <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div><!-- panel-btns -->
              <h3 class="panel-title">Panel Title</h3>
            </div>
            <div class="panel-body">
              Panel content
            </div>
          </div><!-- panel -->
        </div><!-- col-sm-6 -->
        
        <div class="col-sm-6">
          <div class="panel panel-warning">
            <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div><!-- panel-btns -->
              <h3 class="panel-title">Panel Title</h3>
            </div>
            <div class="panel-body">
              Panel content
            </div>
          </div><!-- panel -->
        </div><!-- col-sm-6 -->
        
        <div class="col-sm-6">
          <div class="panel panel-danger">
            <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div><!-- panel-btns -->
              <h3 class="panel-title">Panel Title</h3>
            </div>
            <div class="panel-body">
              Panel content
            </div>
          </div><!-- panel -->
        </div><!-- col-sm-6 -->
        
        <div class="col-sm-6">
          <div class="panel panel-info">
            <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div><!-- panel-btns -->
              <h3 class="panel-title">Panel Title</h3>
            </div>
            <div class="panel-body">
              Panel content
            </div>
          </div><!-- panel -->
        </div><!-- col-sm-6 -->
        
        <div class="col-sm-6">
          <div class="panel panel-dark">
            <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div><!-- panel-btns -->
              <h3 class="panel-title">Panel Title</h3>
            </div>
            <div class="panel-body">
              Panel content
            </div>
          </div><!-- panel -->
        </div><!-- col-sm-6 -->
        
      </div><!-- row -->
      
      <div class="mb20"></div>
      
      <h5 class="subtitle mb5">Panel Header Alternative</h5>
      <p class="mb20">Like other components, easily make a panel more meaningful to a particular context by adding any of the contextual state classes.</p>
      <div class="row">
        <div class="col-sm-6">
          <div class="panel panel-primary panel-alt">
          <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div><!-- panel-btns -->
              <h3 class="panel-title">Panel Title</h3>
              <p>Some description goes here...</p>
            </div>
            <div class="panel-body">
              Panel content
            </div>
          </div><!-- panel -->
        </div><!-- col-sm-6 -->
        <div class="col-sm-6">
          <div class="panel panel-dark panel-alt">
          <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div><!-- panel-btns -->
              <h3 class="panel-title">Panel Title</h3>
              <p>Some description goes here...</p>
            </div>
            <div class="panel-body">
              Panel content
            </div>
          </div><!-- panel -->
        </div><!-- col-sm-6 -->
      </div><!-- row -->  
      
      <div class="mb20"></div>
    
      <h5 class="subtitle mb5">Available Widgets</h5>
      <p class="mb30">Below are some predesigned widgets that may be useful in your projects. You can put this somewhere in your web pages (ie. dashboard, sidebar).</p>
      
      <div class="row">
        
        <div class="col-md-4">
          <div class="panel panel-default panel-alt widget-messaging">
          <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-edit"><i class="fa fa-edit"></i></a>
              </div><!-- panel-btns -->
              <h3 class="panel-title">Messaging</h3>
            </div>
            <div class="panel-body">
              <ul>
                <li>
                  <small class="pull-right">Dec 10</small>
                  <h4 class="sender">Jennier Lawrence</h4>
                  <small>Lorem ipsum dolor sit amet...</small>
                </li>
                <li>
                  <small class="pull-right">Dec 9</small>
                  <h4 class="sender">Marsha Mellow</h4>
                  <small>Lorem ipsum dolor sit amet...</small>
                </li>
                <li>
                  <small class="pull-right">Dec 9</small>
                  <h4 class="sender">Holly Golightly</h4>
                  <small>Lorem ipsum dolor sit amet...</small>
                </li>
              </ul>
            </div><!-- panel-body -->
          </div><!-- panel -->
          
          <ul class="nav nav-tabs nav-justified">
            <li class="active"><a data-toggle="tab" href="#popular"><strong>Popular</strong></a></li>
            <li><a data-toggle="tab" href="#recent"><strong>Recent</strong></a></li>
            <li><a data-toggle="tab" href="#comments"><strong>Comments</strong></a></li>
          </ul>
          <div class="tab-content">
            <div id="popular" class="widget-bloglist tab-pane active">
              
              <div class="media">
                <a class="pull-left" href="#">
                  <img class="media-object thumbnail" src="${ctx}/static/holder.js/60x60" alt="100x100">
                </a>
                <div class="media-body">
                  <h4 class="media-heading"><a href="blog-single.html">Adding Touch Support To Website</a></h4>
                  <small class="media-desc">Lorem ipsum dolor sit amet, consectetur adipisicing...</small>
                </div>
              </div>
              
              <div class="media">
                <a class="pull-left" href="#">
                  <img class="media-object thumbnail" src="${ctx}/static/holder.js/60x60" alt="100x100">
                </a>
                <div class="media-body">
                  <h4 class="media-heading"><a href="blog-single.html">Grab Info From URL</a></h4>
                  <small class="media-desc">Voluptatem quia voluptas sit aspernatur aut consectetur odit aut...</small>
                </div>
              </div>
              
              <div class="media">
                <a class="pull-left" href="#">
                  <img class="media-object thumbnail" src="${ctx}/static/holder.js/60x60" alt="100x100">
                </a>
                <div class="media-body">
                  <h4 class="media-heading"><a href="blog-single.html">jQuery Form Validation</a></h4>
                  <small class="media-desc">Voluptatem quia voluptas sit aspernatur aut consectetur odit aut...</small>
                </div>
              </div>
              
            </div><!-- tab-pane -->
            
            <div id="recent" class="widget-bloglist tab-pane">
              
              <div class="media">
                <a class="pull-left" href="#">
                  <img class="media-object thumbnail" src="${ctx}/static/holder.js/60x60" alt="100x100">
                </a>
                <div class="media-body">
                  <h4 class="media-heading"><a href="blog-single.html">Enhanced Checkboxes</a></h4>
                  <small class="media-desc">Voluptatem quia voluptas sit aspernatur aut consectetur odit aut...</small>
                </div>
              </div>
              
              <div class="media">
                <a class="pull-left" href="#">
                  <img class="media-object thumbnail" src="${ctx}/static/holder.js/60x60" alt="100x100">
                </a>
                <div class="media-body">
                  <h4 class="media-heading"><a href="blog-single.html">Textbox Field</a></h4>
                  <small class="media-desc">Voluptatem quia voluptas sit aspernatur aut consectetur odit aut...</small>
                </div>
              </div>
              
              <div class="media">
                <a class="pull-left" href="#">
                  <img class="media-object thumbnail" src="${ctx}/static/holder.js/60x60" alt="100x100">
                </a>
                <div class="media-body">
                  <h4 class="media-heading"><a href="blog-single.html">Creating Dropdown Menu</a></h4>
                  <small class="media-desc">Voluptatem quia voluptas sit aspernatur aut consectetur odit aut...</small>
                </div>
              </div>
              
            </div>
            <div id="comments" class="widget-bloglist tab-pane">
              
              <div class="media">
                <a class="pull-left" href="#">
                  <img class="media-object thumbnail" src="${ctx}/static/holder.js/60x60" alt="100x100">
                </a>
                <div class="media-body">
                  <h4 class="media-heading"><a href="profile.html">John Doe</a> in <a href="blog-single.html" title="Adding To Support To Website">Adding Touch...</a></h4>
                  <small class="media-desc">Voluptatem quia voluptas sit aspernatur aut consectetur odit aut...</small>
                </div>
              </div>
              
              <div class="media">
                <a class="pull-left" href="#">
                  <img class="media-object thumbnail" src="${ctx}/static/holder.js/60x60" alt="100x100">
                </a>
                <div class="media-body">
                  <h4 class="media-heading"><a href="blog-single.html">Jane Smith</a> in <a href="blog-single.html" title="Grab Info From URL">Grab Info From...</a></h4>
                  <small class="media-desc">Voluptatem quia voluptas sit aspernatur aut consectetur odit aut...</small>
                </div>
              </div>
              
              <div class="media">
                <a class="pull-left" href="#">
                  <img class="media-object thumbnail" src="${ctx}/static/holder.js/60x60" alt="100x100">
                </a>
                <div class="media-body">
                  <h4 class="media-heading"><a href="blog-single.html">Donald Frank</a> in <a href="blog-single.html" title="jQuery Form Validation">jQuery Form...</a></h4>
                  <small class="media-desc">Voluptatem quia voluptas sit aspernatur aut consectetur odit aut...</small>
                </div>
              </div>
              
            </div>
          </div><!-- tab-content -->
          
          <div class="mb20"></div>
          
          <div class="panel panel-default widget-profile">
            <div class="panel-heading">
              <div class="cover"><img src="${ctx}/static/images/photos/photo2.png" alt="Cover Photo" /></div>
            </div>
            <div class="panel-body">
              <img src="${ctx}/static/images/photos/photo3.png" class="widget-profile-img thumbnail" alt="80x80" />
              <div class="widget-profile-title">
                <h4>Edsger Dijkstra</h4>
                <small><i class="fa fa-map-marker"></i> San Francisco, California</small>
              </div>
              <blockquote class="serif italic text-center">
                If debugging is the process of removing software bugs, then programming must be the process of putting them in.
              </blockquote>
              <div class="row">
                <div class="col-xs-6 text-center">
                  <span>1,100 Followers</span>
                </div>
                <div class="col-xs-6 text-center">
                  <span>36 Following</span>
                </div>
              </div>
            </div>
          </div><!-- panel -->
          
        </div><!-- col-md-4 -->
        
        <div class="col-md-4">
          <div class="panel panel-primary panel-alt widget-newsletter">
          <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div><!-- panel-btns -->
              <h3 class="panel-title">Subscribe To Newsletter</h3>
            </div>
            <div class="panel-body">
              <small>Sign up below to receive all the latest updates &amp; news from us.</small>
              <input type="text" name="name" class="form-control mt10 mb10" placeholder="Type Your Name" />
              <input type="email" name="email" class="form-control mb10" placeholder="Type Your Email" />
              <button class="btn btn-default btn-block">Subscribe Newsletter</button>
            </div><!-- panel-body -->
          </div><!-- panel -->
          
          <div class="panel panel-default widget-photoday">
            <div class="panel-body">
              <a href="" class="photoday"><img src="${ctx}/static/images/photos/photo1.png" alt="" /></a>
              <div class="photo-details">
                <h4 class="photo-title">Strawhat In The Beach</h4>
                <small class="text-muted"><i class="fa fa-map-marker"></i> San Franciso, California, USA</small>
                <small>By: <a href="">ThemePixels</a></small>
              </div><!-- photo-details -->
              <ul class="photo-meta">
                <li><span><i class="fa fa-eye"></i> 32,102</span></li>
                <li><a href="#"><i class="fa fa-heart"></i> 1,003</a></li>
                <li><a href="#"><i class="fa fa-comments"></i> 52</a></li>
              </ul>
            </div><!-- panel-body -->
          </div><!-- panel -->
          
          <div class="panel panel-default widget-weather">
            <div class="panel-body">
              <div class="row">
                <div class="col-xs-6 temp text-center">
                  <h1>18 <span>&#12444;</span></h1>
                  <h5><i class="fa fa-map-marker"></i> &nbsp; San Francisco</h5>
                </div>
                <div class="col-xs-6 weather text-center">
                  <i class="fa fa-cloud weather-icon"></i>
                  <div class="pull-left"><i class="fa fa-umbrella"></i> 1.0mm</div>
                  <div class="pull-right"><i class="fa fa-flag"></i> 30mph</div>
                </div>
              </div>
            </div><!-- panel-body -->
          </div><!-- panel -->
          
          <div class="panel panel-dark panel-alt widget-slider">
            <div class="panel-heading">
                <h5 class="panel-title">Content Slider</h5>
            </div>
            <div class="panel-body">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                      <div class="item active">
                        <div class="media">
                            <a href="#" class="pull-left">
                              <img alt="80x60" src="${ctx}/static/holder.js/80x60/#666:#fff" class="media-object" />
                            </a>
                            <div class="media-body">
                              <h4 class="media-heading"><a href="blog-single.html">Adding Touch Support To Website</a></h4>
                              <small class="media-desc">Lorem ipsum dolor sit amet, consectetur adipisicing...</small>
                            </div>
                        </div><!-- media -->
                      </div><!-- item -->
                      
                      <div class="item">
                        <div class="media">
                            <a href="#" class="pull-left">
                              <img alt="80x60" src="${ctx}/static/holder.js/80x60/#999:#fff" class="media-object" />
                            </a>
                            <div class="media-body">
                              <h4 class="media-heading"><a href="blog-single.html">Grab Info From URL</a></h4>
                              <small class="media-desc">Voluptatem quia voluptas sit aspernatur aut consectetur odit aut...</small>
                            </div>
                        </div>
                      </div>
                      
                      <div class="item">
                        <div class="media">
                            <a href="#" class="pull-left">
                              <img alt="80x60" src="${ctx}/static/holder.js/80x60/#777:#fff" class="media-object" />
                            </a>
                            <div class="media-body">
                              <h4 class="media-heading"><a href="blog-single.html">jQuery Form Validation</a></h4>
                              <small class="media-desc">Voluptatem quia voluptas sit aspernatur aut consectetur odit aut...</small>
                            </div>
                        </div>
                      </div>
                      
                    </div><!-- carousel-inner -->

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                      <span class="fa fa-angle-left"></span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                      <span class="fa fa-angle-right"></span>
                    </a>
                </div><!-- carousel -->

            </div><!-- panel-body -->
          </div><!-- panel -->
          
          <div class="panel panel-dark panel-alt widget-slider">
            <div class="panel-heading">
                <h5 class="panel-title">Slider With Indicators</h5>
            </div>
            <div class="panel-body">
                <div id="carousel-example-generic2" class="carousel slide" data-ride="carousel">

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                      <div class="item active">
                        <div class="media">
                            <a href="#" class="pull-left">
                              <img alt="80x60" src="${ctx}/static/holder.js/80x60/#666:#fff" class="media-object" />
                            </a>
                            <div class="media-body">
                              <h4 class="media-heading"><a href="blog-single.html">Adding Touch Support To Website</a></h4>
                              <small class="media-desc">Lorem ipsum dolor sit amet, consectetur adipisicing...</small>
                            </div>
                        </div><!-- media -->
                      </div><!-- item -->
                      
                      <div class="item">
                        <div class="media">
                            <a href="#" class="pull-left">
                              <img alt="80x60" src="${ctx}/static/holder.js/80x60/#999:#fff" class="media-object" />
                            </a>
                            <div class="media-body">
                              <h4 class="media-heading"><a href="blog-single.html">Grab Info From URL</a></h4>
                              <small class="media-desc">Voluptatem quia voluptas sit aspernatur aut consectetur odit aut...</small>
                            </div>
                        </div>
                      </div>
                      
                      <div class="item">
                        <div class="media">
                            <a href="#" class="pull-left">
                              <img alt="80x60" src="${ctx}/static/holder.js/80x60/#777:#fff" class="media-object" />
                            </a>
                            <div class="media-body">
                              <h4 class="media-heading"><a href="blog-single.html">jQuery Form Validation</a></h4>
                              <small class="media-desc">Voluptatem quia voluptas sit aspernatur aut consectetur odit aut...</small>
                            </div>
                        </div>
                      </div>
                      
                    </div><!-- carousel-inner -->

                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                      <li data-target="#carousel-example-generic2" data-slide-to="0" class="active"></li>
                      <li data-target="#carousel-example-generic2" data-slide-to="1"></li>
                      <li data-target="#carousel-example-generic2" data-slide-to="2"></li>
                    </ol>
                    
                </div><!-- carousel -->

            </div><!-- panel-body -->
          </div><!-- panel -->
          
        </div><!-- col-md-4 -->
        
        <div class="col-md-4">
          <div class="panel panel-dark panel-alt widget-quick-status-post">
          <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div><!-- panel-btns -->
              <h3 class="panel-title">Quick Status Post</h3>
            </div>
            <div class="panel-body">
              <ul class="nav nav-tabs nav-justified">
                <li class="active"><a href="#post-status" data-toggle="tab"><i class="fa fa-pencil"></i> <strong>Status</strong></a></li>
                <li><a href="#post-photo" data-toggle="tab"><i class="fa fa-picture-o"></i> <strong>Photo</strong></a></li>
                <li><a href="#post-checkin" data-toggle="tab"><i class="fa fa-map-marker"></i> <strong>Check-In</strong></a></li>
              </ul>
              <div class="tab-content">
                <div id="post-status" class="tab-pane active">
                  <input type="text" class="form-control" placeholder="What's your status?" />
                </div>
                <div id="post-photo" class="tab-pane">
                  <input type="text" class="form-control" placeholder="Choose photo" />
                </div>
                <div id="post-checkin" class="tab-pane">
                  <input type="text" class="form-control" placeholder="Search location" />
                </div>
                <button class="btn btn-primary btn-block mt10">Submit Post</button>
              </div><!-- tab-content -->
              
            </div><!-- panel-body -->
          </div><!-- panel -->
          
          <div class="mb20"></div>
          
          <div class="row">
            <div class="col-xs-6">
              <div class="panel panel-warning panel-alt widget-today">
                <div class="panel-heading text-center">
                  <i class="fa fa-calendar-o"></i>
                </div>
                <div class="panel-body text-center">
                  <h3 class="today">Fri, Dec 13</h3>
                </div><!-- panel-body -->
              </div><!-- panel -->
            </div>
            
            <div class="col-xs-6">
              <div class="panel panel-danger panel-alt widget-time">
                <div class="panel-heading text-center">
                  <i class="glyphicon glyphicon-time"></i>
                </div>
                <div class="panel-body text-center">
                  <h3 class="today">4:50AM PST</h3>
                </div><!-- panel-body -->
              </div><!-- panel -->
            </div>
          </div>
          
          <div class="panel panel-success">
            <div class="panel-heading padding5">
              <div id="line-chart" style="height: 200px;"></div>
            </div>
            <div class="panel-body">
              <div class="tinystat pull-left">
                <div id="sparkline" class="chart mt5"></div>
                <div class="datainfo">
                  <span class="text-muted">Average Sales</span>
                  <h4>$630,201</h4>
                </div>
              </div><!-- tinystat -->
              <div class="tinystat pull-right">
                <div id="sparkline2" class="chart mt5"></div>
                <div class="datainfo">
                  <span class="text-muted">Total Sales</span>
                  <h4>$139,201</h4>
                </div>
              </div><!-- tinystat -->
            </div>
          </div>
          
          <div class="panel panel-dark panel-alt widget-todo">
          <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="tooltips" data-toggle="tooltip" title="Settings"><i class="glyphicon glyphicon-cog"></i></a>
                <a href="" id="addnewtodo" class="tooltips" data-toggle="tooltip" title="Add New"><i class="glyphicon glyphicon-plus"></i></a>
              </div><!-- panel-btns -->
              <h3 class="panel-title">To-Do List Widget</h3>
            </div>
            <div class="panel-body nopadding">
              <ul class="todo-list">
                <li>
                    <div class="ckbox ckbox-success">
                        <input type="checkbox" value="1" id="washcar" />
                        <label for="washcar">Wash car in neighbors house</label>
                    </div>
                </li>
                <li>
                    <div class="ckbox ckbox-success">
                        <input type="checkbox" value="1" id="eatpizza" checked="checked" />
                        <label for="eatpizza">Find and eat pizza anywhere</label>
                    </div>
                </li>
                <li>
                    <div class="ckbox ckbox-success">
                        <input type="checkbox" value="1" id="washdish" checked="checked" />
                        <label for="washdish">Wash the dishes and map the floor</label>
                    </div>
                </li>
                <li>
                    <div class="ckbox ckbox-success">
                        <input type="checkbox" value="1" id="buyclothes" />
                        <label for="buyclothes">Buy some clothes</label>
                    </div>
                </li>
                <li>
                    <div class="ckbox ckbox-success">
                        <input type="checkbox" value="1" id="throw" checked="checked" />
                        <label for="throw">Throw the garbage</label>
                    </div>
                </li>
                <li>
                    <div class="ckbox ckbox-success">
                        <input type="checkbox" value="1" id="reply" />
                        <label for="reply">Reply all emails for this week</label>
                    </div>
                </li>
              </ul>
            </div><!-- panel-body -->
          </div><!-- panel -->
          
        </div><!-- col-md-4 -->
        
      </div><!-- row -->
    
    </div><!-- contentpanel -->
    
	<script src="${ctx}/static/js/holder.js"></script>
	<script src="${ctx}/static/js/morris.min.js"></script>
	<script src="${ctx}/static/js/raphael-2.1.0.min.js"></script>
	
	<script src="${ctx}/static/js/custom.js"></script>
	<script>
	  jQuery(document).ready(function() {
	    
	    "use strict";
	    
	    new Morris.Line({
	        // ID of the element in which to draw the chart.
	        element: 'line-chart',
	        // Chart data records -- each entry in this array corresponds to a point on
	        // the chart.
	        data: [
	            { y: '2006', a: 50, b: 0 },
	            { y: '2007', a: 60,  b: 25 },
	            { y: '2008', a: 45,  b: 30 },
	            { y: '2009', a: 40,  b: 20 },
	            { y: '2010', a: 50,  b: 35 },
	            { y: '2011', a: 60,  b: 50 },
	            { y: '2012', a: 65, b: 55 }
	        ],
	        xkey: 'y',
	        ykeys: ['a', 'b'],
	        labels: ['Series A', 'Series B'],
	        gridTextColor: 'rgba(255,255,255,0.5)',
	        lineColors: ['#fff', '#fdd2a4'],
	        lineWidth: '2px',
	        hideHover: 'always',
	        smooth: false,
	        grid: false
	    });
	    
	    jQuery('#sparkline').sparkline([4,3,3,1,4,3,2,2,3,10,9,6], {
			  type: 'bar', 
			  height:'30px',
	        barColor: '#428BCA'
	    });
	    
	    jQuery('#sparkline2').sparkline([9,8,8,6,9,10,6,5,6,3,4,2], {
			  type: 'bar', 
			  height:'30px',
	        barColor: '#999'
	    });
	    
	    
	    //Add New To-Do
	    jQuery('#addnewtodo').click(function(){
	        
	        var todo = jQuery(this).closest('.panel').find('.todo-list');
	        if(todo.find('.todo-form').length == 0) {
	            todo.prepend('<li class="todo-form">'+
	                         '<div class="row">'+
	                            '<div class="col-sm-8">'+
	                                '<input type="text" class="form-control" placeholder="Type something here..." />'+
	                            '</div>'+
	                            '<div class="col-sm-4">'+
	                                '<button class="btn btn-primary btn-sm btn-block">Add To-Do</button>'+
	                            '</div>'+
	                         '</li>');
	        }
	        return false;
	    });
	    
	    
	  });
	</script>

</body>
</html>
