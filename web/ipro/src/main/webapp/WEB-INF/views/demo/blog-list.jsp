<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Blog List</title>
</head>
<body>
    <div class="pageheader">
      <h2><i class="fa fa-file-text"></i> Blog List <span>Read our latest news...</span></h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="index.html">Bracket</a></li>
          <li><a href="index.html">Pages</a></li>
          <li class="active">Blog List</li>
        </ol>
      </div>
    </div>
    
    <div class="contentpanel">
      
      <div id="bloglist" class="row">
        
        <div class="col-xs-6 col-sm-4 col-md-3">
          <div class="blog-item">
            <a href="blog-single.html" class="blog-img"><img src="${ctx}/static/images/photos/blog1.jpg" class="img-responsive" alt="" /></a>
            <div class="blog-details">
              <h4 class="blog-title"><a href="">Getting Started With Film Photography</a></h4>
              <ul class="blog-meta">
                <li>By: <a href="">TmPxls</a></li>
                <li>Jan 03, 2014</li>
                <li><a href="">2 Comments</a></li>
              </ul>
              <div class="blog-summary">
                <p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda</p>
                <button class="btn btn-sm btn-white">Read More</button>
              </div>
            </div>
          </div><!-- blog-item -->
        </div><!-- col-xs-6 -->
        
        <div class="col-xs-6 col-sm-4 col-md-3">
          <div class="blog-item">
            <a href="blog-single.html" class="blog-img"><img src="${ctx}/static/images/photos/blog2.jpg" class="img-responsive" alt="" /></a>
            <div class="blog-details">
              <h4 class="blog-title"><a href="">Rigging in Autodesk 3Ds Max</a></h4>
              <ul class="blog-meta">
                <li>By: <a href="">TmPxls</a></li>
                <li>Jan 02, 2014</li>
                <li><a href="">18 Comments</a></li>
              </ul>
              <div class="blog-summary">
                <p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae</p>
                <button class="btn btn-sm btn-white">Read More</button>
              </div>
            </div>
          </div><!-- blog-item -->
        </div><!-- col-xs-6 -->
        
        <div class="col-xs-6 col-sm-4 col-md-3">
          <div class="blog-item blog-quote">
            <div class="quote quote-primary">
                <a href="">
                  Walking on water and developing software from a specification are easy if both are frozen
                  <small class="quote-author">- Edward V Berard</small>
                </a>
              </div>
            <div class="blog-details">
              <ul class="blog-meta">
                <li>By: <a href="">TmPxls</a></li>
                <li>Jan 02, 2014</li>
                <li><a href="">2 Comments</a></li>
              </ul>
            </div><!-- blog-details -->
          </div><!-- blog-item -->
        </div><!-- col-xs-6 -->
        
        <div class="col-xs-6 col-sm-4 col-md-3">
          <div class="blog-item">
            <a href="blog-single.html" class="blog-img"><img src="${ctx}/static/images/photos/blog3.jpg" class="img-responsive" alt="" /></a>
            <div class="blog-details">
              <h4 class="blog-title"><a href="">Which is the best 3D Rendering Software?</a></h4>
              <ul class="blog-meta">
                <li>By: <a href="">TmPxls</a></li>
                <li>Jan 02, 2014</li>
                <li><a href="">2 Comments</a></li>
              </ul>
              <div class="blog-summary">
                <p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae</p>
                <button class="btn btn-sm btn-white">Read More</button>
              </div>
            </div>
          </div><!-- blog-item -->
        </div><!-- col-xs-6 -->
        
        <div class="col-xs-6 col-sm-4 col-md-3">
          <div class="blog-item">
            <div class="blog-video">
              <iframe src="http://player.vimeo.com/video/51478176" allowfullscreen></iframe>
            </div>
            <div class="blog-details">
              <h4 class="blog-title"><a href="">Traversing Files in Java 7</a></h4>
              <ul class="blog-meta">
                <li>By: <a href="">TmPxls</a></li>
                <li>Jan 01, 2014</li>
                <li><a href="">5 Comments</a></li>
              </ul>
              <div class="blog-summary">
                <p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae</p>
                <button class="btn btn-sm btn-white">Read More</button>
              </div>
            </div>
          </div><!-- blog-item -->
        </div><!-- col-xs-6 -->
        
        <div class="col-xs-6 col-sm-4 col-md-3">
          <div class="blog-item blog-quote">
            <div class="quote quote-success">
                <a href="">
                  Any fool can write code that a computer can understand. Good programmers write code that humans can understand.
                  <small class="quote-author">- Martin Fowler</small>
                </a>
              </div>
            <div class="blog-details">
              <ul class="blog-meta">
                <li>By: <a href="">TmPxls</a></li>
                <li>Dec 31, 2013</li>
                <li><a href="">2 Comments</a></li>
              </ul>
            </div><!-- blog-details -->
          </div><!-- blog-item -->
        </div><!-- col-xs-6 -->
        
        <div class="col-xs-6 col-sm-4 col-md-3">
          <div class="blog-item">
            <a href="blog-single.html" class="blog-img"><img src="${ctx}/static/images/photos/blog4.jpg" class="img-responsive" alt="" /></a>
            <div class="blog-details">
              <h4 class="blog-title"><a href="">How to Create Infinite Scrolling on Your Website</a></h4>
              <ul class="blog-meta">
                <li>By: <a href="">TmPxls</a></li>
                <li>Dec 30, 2014</li>
                <li><a href="">3 Comments</a></li>
              </ul>
              <div class="blog-summary">
                <p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae</p>
                <button class="btn btn-sm btn-white">Read More</button>
              </div>
            </div>
          </div><!-- blog-item -->
        </div><!-- col-xs-6 -->
        
        <div class="col-xs-6 col-sm-4 col-md-3">
          <div class="blog-item">
            <a href="blog-single.html" class="blog-img"><img src="${ctx}/static/images/photos/media1.jpg" class="img-responsive" alt="" /></a>
            <div class="blog-details">
              <h4 class="blog-title"><a href="">Getting Started With Film Photography</a></h4>
              <ul class="blog-meta">
                <li>By: <a href="">TmPxls</a></li>
                <li>Dec 30, 2013</li>
                <li><a href="">2 Comments</a></li>
              </ul>
              <div class="blog-summary">
                <p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda</p>
                <button class="btn btn-sm btn-white">Read More</button>
              </div>
            </div>
          </div><!-- blog-item -->
        </div><!-- col-xs-6 -->
        
        <div class="col-xs-6 col-sm-4 col-md-3">
          <div class="blog-item blog-quote">
            <div class="quote quote-danger">
                <a href="">
                  Debugging is twice as hard as writing the code in the first place. Therefore, if you write the code as cleverly as possible, you are, by definition, not smart enough to debug it.
                  <small class="quote-author">- Brian Kernighan</small>
                </a>
              </div>
            <div class="blog-details">
              <ul class="blog-meta">
                <li>By: <a href="">TmPxls</a></li>
                <li>Dec 29, 2013</li>
                <li><a href="">2 Comments</a></li>
              </ul>
            </div><!-- blog-details -->
          </div><!-- blog-item -->
        </div><!-- col-xs-6 -->
        
        <div class="col-xs-6 col-sm-4 col-md-3">
          <div class="blog-item">
            <a href="blog-single.html" class="blog-img"><img src="${ctx}/static/images/photos/blog1.jpg" class="img-responsive" alt="" /></a>
            <div class="blog-details">
              <h4 class="blog-title"><a href="">Getting Started With Film Photography</a></h4>
              <ul class="blog-meta">
                <li>By: <a href="">TmPxls</a></li>
                <li>Jan 03, 2014</li>
                <li><a href="">2 Comments</a></li>
              </ul>
              <div class="blog-summary">
                <p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda</p>
                <button class="btn btn-sm btn-white">Read More</button>
              </div>
            </div>
          </div><!-- blog-item -->
        </div><!-- col-xs-6 -->
        
        <div class="col-xs-6 col-sm-4 col-md-3">
          <div class="blog-item">
            <a href="blog-single.html" class="blog-img"><img src="${ctx}/static/images/photos/blog2.jpg" class="img-responsive" alt="" /></a>
            <div class="blog-details">
              <h4 class="blog-title"><a href="">Rigging in Autodesk 3Ds Max</a></h4>
              <ul class="blog-meta">
                <li>By: <a href="">TmPxls</a></li>
                <li>Jan 02, 2014</li>
                <li><a href="">18 Comments</a></li>
              </ul>
              <div class="blog-summary">
                <p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae</p>
                <button class="btn btn-sm btn-white">Read More</button>
              </div>
            </div>
          </div><!-- blog-item -->
        </div><!-- col-xs-6 -->
        
        <div class="col-xs-6 col-sm-4 col-md-3">
          <div class="blog-item blog-quote">
            <div class="quote quote-primary">
                <a href="">
                  Walking on water and developing software from a specification are easy if both are frozen
                  <small class="quote-author">- Edward V Berard</small>
                </a>
              </div>
            <div class="blog-details">
              <ul class="blog-meta">
                <li>By: <a href="">TmPxls</a></li>
                <li>Jan 02, 2014</li>
                <li><a href="">2 Comments</a></li>
              </ul>
            </div><!-- blog-details -->
          </div><!-- blog-item -->
        </div><!-- col-xs-6 -->
        
        <div class="col-xs-6 col-sm-4 col-md-3">
          <div class="blog-item">
            <a href="blog-single.html" class="blog-img"><img src="${ctx}/static/images/photos/blog3.jpg" class="img-responsive" alt="" /></a>
            <div class="blog-details">
              <h4 class="blog-title"><a href="">Which is the best 3D Rendering Software?</a></h4>
              <ul class="blog-meta">
                <li>By: <a href="">TmPxls</a></li>
                <li>Jan 02, 2014</li>
                <li><a href="">2 Comments</a></li>
              </ul>
              <div class="blog-summary">
                <p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae</p>
                <button class="btn btn-sm btn-white">Read More</button>
              </div>
            </div>
          </div><!-- blog-item -->
        </div><!-- col-xs-6 -->
        
      </div><!-- row -->
      
    </div><!-- contentpanel -->
    

	<script src="${ctx}/static/js/masonry.pkgd.min.js"></script>

	<script src="${ctx}/static/js/custom.js"></script>
	<script>
	  jQuery(window).load(function(){
	    
	    "use strict";
	  
	    var container = document.querySelector('#bloglist');
	    var msnry = new Masonry( container, {
	      // options
	      columnWidth: '.col-xs-6',
	      itemSelector: '.col-xs-6'
	    });
	    
	    // check on load
	    if(jQuery(window).width() <= 480 )
	        msnry.destroy();
	
	    // check on resize
	    jQuery(window).resize(function(){
	        if(jQuery(this).width() <= 480 )
	            msnry.destroy();
	    });
	    
	    // relayout items when clicking chat icon
	    jQuery('#chatview, .menutoggle').click(function(){
	       msnry.layout();
	    });
	
	  });
	  
	</script>

</body>
</html>
