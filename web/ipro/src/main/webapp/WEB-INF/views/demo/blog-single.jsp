<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Blog Single</title>
</head>
<body>
    <div class="pageheader">
      <h2><i class="fa fa-file-text"></i> Blog Single <span>Read our latest news...</span></h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="index.html">Bracket</a></li>
          <li><a href="index.html">Pages</a></li>
          <li class="active">Blog Single</li>
        </ol>
      </div>
    </div>
    
    <div class="contentpanel">
      
      <div class="row blog-content">
      <div class="col-sm-9">
        
        <div class="panel panel-default panel-blog">
          <div class="panel-body">
            <h3 class="blogsingle-title">Getting Started With Film Photography</h3>
            
            <ul class="blog-meta">
              <li>By: <a href="">TmPxls</a></li>
              <li>Jan 02, 2014</li>
              <li><a href="">2 Comments</a></li>
            </ul>
            
            <br />
            <div class="blog-img"><img src="${ctx}/static/images/photos/blog1.jpg" class="img-responsive" alt="" /></div>
            <div class="mb20"></div>
            
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
            <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
            <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur</p>  
          
          </div><!-- panel-body -->
        </div><!-- panel -->
        
        <div class="authorpanel">
          <div class="media">
            <a class="pull-left" href="#">
              <img class="media-object thumbnail" src="${ctx}/static/images/photos/userprofile.png" alt="" />
            </a>
            <div class="media-body event-body">
              <h4 class="subtitle">About The Author</h4>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
            </div>
          </div><!-- media -->
        </div><!-- authorpanel -->
        
        <div class="mb30"></div>
        <h5 class="subtitle">5 Comments</h5>
        <div class="mb30"></div>
        
        <ul class="media-list comment-list">
          
          <li class="media">
            <a class="pull-left" href="#">
              <img class="media-object thumbnail" src="${ctx}/static/images/photos/user1.png" alt="" />
            </a>
            <div class="media-body">
              <a href="" class="btn btn-primary btn-xs pull-right reply">Reply</a>
              <h4>Nusja Nawancali</h4>
              <small class="text-muted">January 10, 2014 at 7:30am</small>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
              
              <div class="media">
                <a class="pull-left" href="#">
                  <img class="media-object thumbnail" src="${ctx}/static/images/photos/userprofile.png" alt="" />
                </a>
                <div class="media-body">
                  <a href="" class="btn btn-primary btn-xs pull-right reply">Reply</a>
                  <h4>Eileen Sideways</h4>
                  <small class="text-muted">January 10, 2014 at 7:30am</small>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                
                  <div class="media">
                    <a class="pull-left" href="#">
                      <img class="media-object thumbnail" src="${ctx}/static/images/photos/user3.png" alt="" />
                    </a>
                    <div class="media-body">
                      <a href="" class="btn btn-primary btn-xs pull-right reply">Reply</a>
                      <h4>Zaham Sindilmaca</h4>
                      <small class="text-muted">January 10, 2014 at 7:30am</small>
                      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    </div>
                  </div><!-- media -->
                
                </div><!-- media-body -->
              </div><!-- media -->
              
              <div class="media">
                <a class="pull-left" href="#">
                  <img class="media-object thumbnail" src="${ctx}/static/images/photos/user2.png" alt="" />
                </a>
                <div class="media-body">
                  <a href="" class="btn btn-primary btn-xs pull-right reply">Reply</a>
                  <h4>Ray Sin</h4>
                  <small class="text-muted">January 10, 2014 at 7:30am</small>
                  <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                </div>
              </div><!-- media -->
              
            </div><!-- media-body -->
            
          </li><!-- media -->
          
          <li class="media">
            <a class="pull-left" href="#">
              <img class="media-object thumbnail" src="${ctx}/static/images/photos/user1.png" alt="" />
            </a>
            <div class="media-body">
              <a href="" class="btn btn-primary btn-xs pull-right reply">Reply</a>
              <h4>Nusja Nawancali</h4>
              <small class="text-muted">January 10, 2014 at 7:30am</small>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
            </div>
          </li><!-- media -->
          
          <li class="media">
            <a class="pull-left" href="#">
              <img class="media-object thumbnail" src="${ctx}/static/images/photos/user4.png" alt="" />
            </a>
            <div class="media-body">
              <a href="" class="btn btn-primary btn-xs pull-right reply">Reply</a>
              <h4>Weno Carasbong</h4>
              <small class="text-muted">January 10, 2014 at 7:30am</small>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
            
              <div class="media">
                <a class="pull-left" href="#">
                  <img class="media-object thumbnail" src="${ctx}/static/images/photos/user3.png" alt="" />
                </a>
                <div class="media-body">
                  <a href="" class="btn btn-primary btn-xs pull-right reply">Reply</a>
                  <h4>Zaham Sindilmaca</h4>
                  <small class="text-muted">January 10, 2014 at 7:30am</small>
                  <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                </div>
              </div><!-- media -->
                  
            </div>
          </li><!-- media -->
          
        </ul><!-- comment-list -->
        
        <div class="mb30"></div>
        <h5 class="subtitle mb5">Leave A Comment</h5>
        <p class="text-muted">Your email address will not be published.</p>
        <div class="mb20"></div>
        
        <form>
              <div class="row row-pad-5">
                <div class="col-lg-4">
                  <input type="text" class="form-control" placeholder="Name" name="name">
                </div>
                <div class="col-lg-4">
                  <input type="email" class="form-control" placeholder="Email" name="email">
                </div>
                <div class="col-lg-4">
                  <input type="url" class="form-control" placeholder="Website" name="website">
                </div>
              </div><!-- row -->
              <textarea placeholder="Message" rows="5" class="form-control"></textarea>
              <div class="mb10"></div>
              <button class="btn btn-primary">Add Comment</button>
            </form>
      
      </div><!-- col-sm-8 -->
      
      <div class="col-sm-3">
        <div class="blog-sidebar">
          
          <h5 class="subtitle">Text Widget</h5>
          <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam</p>
          
          <div class="mb30"></div>
          
          <h5 class="subtitle">Categories</h5>
          <ul class="sidebar-list">
            <li><a href=""><i class="fa fa-angle-right"></i> Science &amp; Technology</a></li>
            <li><a href=""><i class="fa fa-angle-right"></i> Food &amp; Health</a></li>
            <li><a href=""><i class="fa fa-angle-right"></i> Entertainment</a></li>
            <li><a href=""><i class="fa fa-angle-right"></i> Web Development</a></li>
            <li><a href=""><i class="fa fa-angle-right"></i> Communication</a></li>
            <li><a href=""><i class="fa fa-angle-right"></i> Movies &amp; TV Shows</a></li>
          </ul>
          
          <div class="mb30"></div>
          
          <h5 class="subtitle">Archives</h5>
          <ul class="sidebar-list">
            <li><a href=""><i class="fa fa-angle-right"></i> January 2014</a></li>
            <li><a href=""><i class="fa fa-angle-right"></i> December 2013</a></li>
            <li><a href=""><i class="fa fa-angle-right"></i> November 2013</a></li>
            <li><a href=""><i class="fa fa-angle-right"></i> October 2013</a></li>
            <li><a href=""><i class="fa fa-angle-right"></i> September 2013</a></li>
          </ul>
          
        </div><!-- blog-sidebar -->
        
      </div><!-- col-sm-4 -->
      
      </div><!-- row -->
      
    </div><!-- contentpanel -->
	
	<script src="${ctx}/static/js/custom.js"></script>
	<script>
	</script>

</body>
</html>
