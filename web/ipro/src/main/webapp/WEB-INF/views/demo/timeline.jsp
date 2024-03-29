<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Timeline</title>
</head>
<body>
    <div class="pageheader">
      <h2><i class="fa fa-clock-o"></i> Timeline <span>Subtitle goes here...</span></h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="index.html">Bracket</a></li>
          <li><a href="index.html">Pages</a></li>
          <li class="active">Timeline</li>
        </ol>
      </div>
    </div>
    
    <div class="contentpanel">
      
      <div id="timeline-list" class="row" style="max-width: 950px;">
        
        <div class="col-sm-6">
            <div class="panel panel-dark panel-alt timeline-post">
                <div class="panel-body">              
                    <textarea placeholder="Write something..." class="form-control"></textarea>
                </div><!-- panel-body -->
                <div class="panel-footer">
                    <div class="timeline-btns pull-left">
                        <a href="" class="tooltips" data-toggle="tooltip" title="Add Photo"><i class="glyphicon glyphicon-picture"></i></a>
                        <a href="" class="tooltips" data-toggle="tooltip" title="Add Video"><i class="glyphicon glyphicon-facetime-video"></i></a>
                        <a href="" class="tooltips" data-toggle="tooltip" title="Check In"><i class="glyphicon glyphicon-map-marker"></i></a>
                        <a href="" class="tooltips" data-toggle="tooltip" title="Tag User"><i class="glyphicon glyphicon-user"></i></a>
                    </div><!--timeline-btns -->
                    <button class="btn btn-primary pull-right">Submit Post</button>
                </div><!-- panel-footer -->
            </div>
        </div><!-- col-sm-6 -->
        
        <div class="col-sm-6">
          <div class="panel panel-default panel-timeline">
            <div class="panel-heading">
                
                <div class="media">
                    <a href="#" class="pull-left">
                        <img alt="" src="${ctx}/static/images/photos/user3.png" class="media-object">
                    </a>
                    <div class="media-body">
                        <h4 class="text-primary">Zaham Sindilmaca <small>shared photo</small></h4>
                        <small class="text-muted">January 10, 2014 at 7:30am</small>
                    </div>
                </div><!-- media -->
                
            </div><!-- panel-heading -->
            <div class="panel-body">
                <a href=""><img src="${ctx}/static/images/photos/media2.png" class="img-responsive" alt="" /></a>
                <div class="timeline-btns">
                    <div class="pull-left">
                        <a href="" class="tooltips" data-toggle="tooltip" title="Like"><i class="glyphicon glyphicon-heart"></i></a>
                        <a href="" class="tooltips" data-toggle="tooltip" title="Add Comment"><i class="glyphicon glyphicon-comment"></i></a>
                        <a href="" class="tooltips" data-toggle="tooltip" title="Share"><i class="glyphicon glyphicon-share"></i></a>
                    </div>
                    <div class="pull-right">
                        <small class="text-muted">2 people like this</small>
                    </div>
                </div>
            </div><!-- panel-body -->
            <div class="panel-footer">
                <div class="media">
                    <a href="#" class="pull-left">
                        <img alt="" src="${ctx}/static/images/photos/user3.png" class="media-object">
                    </a>
                    <div class="media-body">
                        <input type="text" class="form-control" placeholder="Write a comment" />
                    </div>
                </div><!-- media -->
            </div>
          </div><!-- panel -->
        </div><!-- col-sm-6 -->
        
        <div class="col-sm-6">
          <div class="panel panel-default panel-timeline">
            <div class="panel-heading">
                
                <div class="media">
                    <a href="#" class="pull-left">
                        <img alt="" src="${ctx}/static/images/photos/user2.png" class="media-object">
                    </a>
                    <div class="media-body">
                        <h4 class="text-primary">Nusja Nawancali <small>shared photo</small></h4>
                        <small class="text-muted">January 9, 2014 at 7:30am</small>
                    </div>
                </div><!-- media -->
                
            </div><!-- panel-heading -->
            <div class="panel-body">
                <a href=""><img src="${ctx}/static/images/photos/media3.png" class="img-responsive" alt="" /></a>
                <div class="timeline-btns">
                    <div class="pull-left">
                        <a href="" class="tooltips" data-toggle="tooltip" title="Like"><i class="glyphicon glyphicon-heart"></i></a>
                        <a href="" class="tooltips" data-toggle="tooltip" title="Add Comment"><i class="glyphicon glyphicon-comment"></i></a>
                        <a href="" class="tooltips" data-toggle="tooltip" title="Share"><i class="glyphicon glyphicon-share"></i></a>
                    </div>
                    <div class="pull-right">
                        <small class="text-muted">6 people like this</small>
                    </div>
                </div>
            </div><!-- panel-body -->
            <div class="panel-footer">
                <div class="media">
                    <a href="#" class="pull-left">
                        <img alt="" src="${ctx}/static/images/photos/user3.png" class="media-object">
                    </a>
                    <div class="media-body">
                        <input type="text" class="form-control" placeholder="Write a comment" />
                    </div>
                </div><!-- media -->
            </div>
          </div><!-- panel -->
        </div><!-- col-sm-6 -->
        
        <div class="col-sm-6">
          <div class="panel panel-default panel-timeline">
            <div class="panel-heading">
                
                <div class="media">
                    <a href="#" class="pull-left">
                        <img alt="" src="${ctx}/static/images/photos/user2.png" class="media-object">
                    </a>
                    <div class="media-body">
                        <h4 class="text-primary">Nusja Nawancali <small>shared photo</small></h4>
                        <small class="text-muted">January 9, 2014 at 5:30am</small>
                    </div>
                </div><!-- media -->
                
            </div><!-- panel-heading -->
            <div class="panel-body">
                
                <div class="media">
                <a href="#" class="pull-left">
                  <img alt="" src="${ctx}/static/images/photos/media4.png" class="media-object">
                </a>
                <div class="media-body">
                  <h4><a href="">My Favorite Place</a></h4>
                  <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                </div>
              </div>
                
                <div class="timeline-btns">
                    <div class="pull-left">
                        <a href="" class="tooltips" data-toggle="tooltip" title="Like"><i class="glyphicon glyphicon-heart"></i></a>
                        <a href="" class="tooltips" data-toggle="tooltip" title="Add Comment"><i class="glyphicon glyphicon-comment"></i></a>
                        <a href="" class="tooltips" data-toggle="tooltip" title="Share"><i class="glyphicon glyphicon-share"></i></a>
                    </div>
                    <div class="pull-right">
                        <small class="text-muted">1 people like this</small>
                    </div>
                </div>
            </div><!-- panel-body -->
            <div class="panel-footer">
                <div class="media">
                    <a href="#" class="pull-left">
                        <img alt="" src="${ctx}/static/images/photos/user3.png" class="media-object">
                    </a>
                    <div class="media-body">
                        <input type="text" class="form-control" placeholder="Write a comment" />
                    </div>
                </div><!-- media -->
            </div>
          </div><!-- panel -->
        </div><!-- col-sm-6 -->
        
        <div class="col-sm-6">
          <div class="panel panel-default panel-timeline">
            <div class="panel-heading">
                
                <div class="media">
                    <a href="#" class="pull-left">
                        <img alt="" src="${ctx}/static/images/photos/user4.png" class="media-object">
                    </a>
                    <div class="media-body">
                        <h4 class="text-primary">Weno Carasbong <small>shared photo</small></h4>
                        <small class="text-muted">January 8, 2014 at 2:30am</small>
                    </div>
                </div><!-- media -->
                
            </div><!-- panel-heading -->
            <div class="panel-body">
                
                <div class="timeline-video">
                    <iframe src="" allowfullscreen></iframe>
                </div>
                
                <div class="timeline-btns">
                    <div class="pull-left">
                        <a href="" class="tooltips" data-toggle="tooltip" title="Like"><i class="glyphicon glyphicon-heart"></i></a>
                        <a href="" class="tooltips" data-toggle="tooltip" title="Add Comment"><i class="glyphicon glyphicon-comment"></i></a>
                        <a href="" class="tooltips" data-toggle="tooltip" title="Share"><i class="glyphicon glyphicon-share"></i></a>
                    </div>
                    <div class="pull-right">
                        <small class="text-muted">6 people like this</small>
                    </div>
                </div>
            </div><!-- panel-body -->
            <div class="panel-footer">
                <div class="media">
                    <a href="#" class="pull-left">
                        <img alt="" src="${ctx}/static/images/photos/user3.png" class="media-object">
                    </a>
                    <div class="media-body">
                        <input type="text" class="form-control" placeholder="Write a comment" />
                    </div>
                </div><!-- media -->
            </div>
          </div><!-- panel -->
        </div><!-- col-sm-6 -->
        
      </div><!-- row -->
      
    </div>
    
	<script src="${ctx}/static/js/masonry.pkgd.min.js"></script>
	
	<script src="${ctx}/static/js/custom.js"></script>
	<script>
	  jQuery(window).load(function(){
	    
	    "use strict";
	  
	    var container = document.querySelector('#timeline-list');
	    var msnry = new Masonry( container, {
	      // options
	      columnWidth: '.col-sm-6',
	      itemSelector: '.col-sm-6'
	    });
	    
	    // check on load
	    if(jQuery(window).width() <= 640 )
	        msnry.destroy();
	
	    // check on resize
	    jQuery(window).resize(function(){
	        if(jQuery(this).width() <= 640 )
	            msnry.destroy();
	    });
	    
	  });
	</script>

</body>
</html>
