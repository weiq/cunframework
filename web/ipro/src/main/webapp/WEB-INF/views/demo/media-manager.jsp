<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Media Manager</title>
  <link href="${ctx}/static/css/prettyPhoto.css" rel="stylesheet">
</head>
<body>
    <div class="pageheader">
      <h2><i class="fa fa-file-o"></i> Media Manager <span>Subtitle goes here...</span></h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="index.html">Bracket</a></li>
          <li><a href="calendar.html">Pages</a></li>
          <li class="active">Media Manager</li>
        </ol>
      </div>
    </div>
        
    <div class="contentpanel">
      
      <ul class="filemanager-options">
        <li>
          <div class="ckbox ckbox-default">
            <input type="checkbox" id="selectall" value="1" />
            <label for="selectall">Select All</label>
          </div>
        </li>
        <li>
          <a href="" class="itemopt disabled"><i class="fa fa-envelope-o"></i> Email</a>
        </li>
        <li>
          <a href="" class="itemopt disabled"><i class="fa fa-download"></i> Download</a>
        </li>
        <li>
          <a href="" class="itemopt disabled"><i class="fa fa-pencil"></i> Edit</a>
        </li>
        <li>
          <a href="" class="itemopt disabled"><i class="fa fa-trash-o"></i> Delete</a>
        </li>
        <li class="filter-type">
          Show:
          <a href="#" class="active">All</a>
          <a href="#">Documents</a>
          <a href="#">Audio</a>
          <a href="#">Images</a>
          <a href="#">Videos</a>
        </li>
        
      </ul>
        
      
      <div class="row">
        <div class="col-sm-9">
          <div class="row filemanager">
            
            <div class="col-xs-6 col-sm-4 col-md-3 document">
              <div class="thmb">
                <div class="ckbox ckbox-default">
                  <input type="checkbox" id="check1" value="1" />
                  <label for="check1"></label>
                </div>
                <div class="btn-group fm-group">
                    <button type="button" class="btn btn-default dropdown-toggle fm-toggle" data-toggle="dropdown">
                      <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu fm-menu" role="menu">
                      <li><a href="#"><i class="fa fa-share"></i> Share</a></li>
                      <li><a href="#"><i class="fa fa-envelope-o"></i> Email</a></li>
                      <li><a href="#"><i class="fa fa-pencil"></i> Edit</a></li>
                      <li><a href="#"><i class="fa fa-download"></i> Download</a></li>
                      <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                    </ul>
                </div><!-- btn-group -->
                <div class="thmb-prev">
                  <img src="${ctx}/static/images/photos/media-doc.png" class="img-responsive" alt="" />
                </div>
                <h5 class="fm-title"><a href="">MyDocuments.doc</a></h5>
                <small class="text-muted">Added: Jan 03, 2014</small>
              </div><!-- thmb -->
            </div><!-- col-xs-6 -->
            
            <div class="col-xs-6 col-sm-4 col-md-3 image">
              <div class="thmb">
                <div class="ckbox ckbox-default">
                  <input type="checkbox" id="check2" value="1" />
                  <label for="check2"></label>
                </div>
                <div class="btn-group fm-group">
                    <button type="button" class="btn btn-default dropdown-toggle fm-toggle" data-toggle="dropdown">
                      <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu fm-menu" role="menu">
                      <li><a href="#"><i class="fa fa-share"></i> Share</a></li>
                      <li><a href="#"><i class="fa fa-envelope-o"></i> Email</a></li>
                      <li><a href="#"><i class="fa fa-pencil"></i> Edit</a></li>
                      <li><a href="#"><i class="fa fa-download"></i> Download</a></li>
                      <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                    </ul>
                </div><!-- btn-group -->
                <div class="thmb-prev">
                  <a href="${ctx}/static/images/photos/media1.jpg" data-rel="prettyPhoto">
                    <img src="${ctx}/static/images/photos/media1.jpg" class="img-responsive" alt="" />
                  </a>
                </div>
                <h5 class="fm-title"><a href="">Vegetarian.png</a></h5>
                <small class="text-muted">Added: Jan 02, 2014</small>
              </div><!-- thmb -->
            </div><!-- col-xs-6 -->
            
            <div class="col-xs-6 col-sm-4 col-md-3 video">
              <div class="thmb">
                <div class="ckbox ckbox-default">
                  <input type="checkbox" id="check3" value="1" />
                  <label for="check3"></label>
                </div>
                <div class="btn-group fm-group">
                    <button type="button" class="btn btn-default dropdown-toggle fm-toggle" data-toggle="dropdown">
                      <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu fm-menu" role="menu">
                      <li><a href="#"><i class="fa fa-share"></i> Share</a></li>
                      <li><a href="#"><i class="fa fa-envelope-o"></i> Email</a></li>
                      <li><a href="#"><i class="fa fa-pencil"></i> Edit</a></li>
                      <li><a href="#"><i class="fa fa-download"></i> Download</a></li>
                      <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                    </ul>
                </div><!-- btn-group -->
                <div class="thmb-prev">
                  <img src="${ctx}/static/images/photos/media5.png" class="img-responsive" alt="" />
                </div>
                <h5 class="fm-title"><a href="">DogAnimation.mp4</a></h5>
                <small class="text-muted">Added: Jan 02, 2014</small>
              </div><!-- thmb -->
            </div><!-- col-xs-6 -->
            
            <div class="col-xs-6 col-sm-4 col-md-3 audio">
              <div class="thmb">
                <div class="ckbox ckbox-default">
                  <input type="checkbox" id="check7" value="1" />
                  <label for="check7"></label>
                </div>
                <div class="btn-group fm-group">
                    <button type="button" class="btn btn-default dropdown-toggle fm-toggle" data-toggle="dropdown">
                      <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu fm-menu" role="menu">
                      <li><a href="#"><i class="fa fa-share"></i> Share</a></li>
                      <li><a href="#"><i class="fa fa-envelope-o"></i> Email</a></li>
                      <li><a href="#"><i class="fa fa-pencil"></i> Edit</a></li>
                      <li><a href="#"><i class="fa fa-download"></i> Download</a></li>
                      <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                    </ul>
                </div><!-- btn-group -->
                <div class="thmb-prev">
                  <img src="${ctx}/static/images/photos/media-audio.png" class="img-responsive" alt="" />
                </div>
                <h5 class="fm-title"><a href="">WreckingBall.mp3</a></h5>
                <small class="text-muted">Added: Jan 01, 2014</small>
              </div><!-- thmb -->
            </div><!-- col-xs-6 -->
            
            <div class="col-xs-6 col-sm-4 col-md-3 image">
              <div class="thmb">
                <div class="ckbox ckbox-default">
                  <input type="checkbox" id="check4" value="1" />
                  <label for="check4"></label>
                </div>
                <div class="btn-group fm-group">
                    <button type="button" class="btn btn-default dropdown-toggle fm-toggle" data-toggle="dropdown">
                      <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu fm-menu" role="menu">
                      <li><a href="#"><i class="fa fa-share"></i> Share</a></li>
                      <li><a href="#"><i class="fa fa-envelope-o"></i> Email</a></li>
                      <li><a href="#"><i class="fa fa-pencil"></i> Edit</a></li>
                      <li><a href="#"><i class="fa fa-download"></i> Download</a></li>
                      <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                    </ul>
                </div><!-- btn-group -->
                <div class="thmb-prev">
                  <a href="${ctx}/static/images/photos/media3.png" data-rel="prettyPhoto">
                    <img src="${ctx}/static/images/photos/media3.png" class="img-responsive" alt="" />
                  </a>
                </div>
                <h5 class="fm-title"><a href="">MyFirstArt.png</a></h5>
                <small class="text-muted">Added: Jan 01, 2014</small>
              </div><!-- thmb -->
            </div><!-- col-xs-6 -->
            
            <div class="col-xs-6 col-sm-4 col-md-3 document">
              <div class="thmb">
                <div class="ckbox ckbox-default">
                  <input type="checkbox" id="check5" value="1" />
                  <label for="check5"></label>
                </div>
                <div class="btn-group fm-group">
                    <button type="button" class="btn btn-default dropdown-toggle fm-toggle" data-toggle="dropdown">
                      <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu fm-menu" role="menu">
                      <li><a href="#"><i class="fa fa-share"></i> Share</a></li>
                      <li><a href="#"><i class="fa fa-envelope-o"></i> Email</a></li>
                      <li><a href="#"><i class="fa fa-pencil"></i> Edit</a></li>
                      <li><a href="#"><i class="fa fa-download"></i> Download</a></li>
                      <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                    </ul>
                </div><!-- btn-group -->
                <div class="thmb-prev">
                  <img src="${ctx}/static/images/photos/media-doc.png" class="img-responsive" alt="" />
                </div>
                <h5 class="fm-title"><a href="">MyResume.docx</a></h5>
                <small class="text-muted">Added: Jan 01, 2014</small>
              </div><!-- thmb -->
            </div><!-- col-xs-6 -->
            
            <div class="col-xs-6 col-sm-4 col-md-3 video">
              <div class="thmb">
                <div class="ckbox ckbox-default">
                  <input type="checkbox" id="check6" value="1" />
                  <label for="check6"></label>
                </div>
                <div class="btn-group fm-group">
                    <button type="button" class="btn btn-default dropdown-toggle fm-toggle" data-toggle="dropdown">
                      <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu fm-menu" role="menu">
                      <li><a href="#"><i class="fa fa-share"></i> Share</a></li>
                      <li><a href="#"><i class="fa fa-envelope-o"></i> Email</a></li>
                      <li><a href="#"><i class="fa fa-pencil"></i> Edit</a></li>
                      <li><a href="#"><i class="fa fa-download"></i> Download</a></li>
                      <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                    </ul>
                </div><!-- btn-group -->
                <div class="thmb-prev">
                  <img src="${ctx}/static/images/photos/media4.png" class="img-responsive" alt="" />
                </div>
                <h5 class="fm-title"><a href="">MyFirstMovie.mp4</a></h5>
                <small class="text-muted">Added: Jan 01, 2014</small>
              </div><!-- thmb -->
            </div><!-- col-xs-6 -->
                        
            <div class="col-xs-6 col-sm-4 col-md-3 image">
              <div class="thmb">
                <div class="ckbox ckbox-default">
                  <input type="checkbox" id="check13" value="1" />
                  <label for="check13"></label>
                </div>
                <div class="btn-group fm-group">
                    <button type="button" class="btn btn-default dropdown-toggle fm-toggle" data-toggle="dropdown">
                      <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu fm-menu" role="menu">
                      <li><a href="#"><i class="fa fa-share"></i> Share</a></li>
                      <li><a href="#"><i class="fa fa-envelope-o"></i> Email</a></li>
                      <li><a href="#"><i class="fa fa-pencil"></i> Edit</a></li>
                      <li><a href="#"><i class="fa fa-download"></i> Download</a></li>
                      <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                    </ul>
                </div><!-- btn-group -->
                <div class="thmb-prev">
                  <a href="${ctx}/static/images/photos/media2.png" data-rel="prettyPhoto">
                    <img src="${ctx}/static/images/photos/media2.png" class="img-responsive" alt="" />
                  </a>
                </div>
                <h5 class="fm-title"><a href="">MeAndFriends.png</a></h5>
                <small class="text-muted">Added: Jan 01, 2014</small>
              </div><!-- thmb -->
            </div><!-- col-xs-6 -->
            
            <div class="col-xs-6 col-sm-4 col-md-3 audio">
              <div class="thmb">
                <div class="ckbox ckbox-default">
                  <input type="checkbox" id="check8" value="1" />
                  <label for="check8"></label>
                </div>
                <div class="btn-group fm-group">
                    <button type="button" class="btn btn-default dropdown-toggle fm-toggle" data-toggle="dropdown">
                      <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu fm-menu" role="menu">
                      <li><a href="#"><i class="fa fa-share"></i> Share</a></li>
                      <li><a href="#"><i class="fa fa-envelope-o"></i> Email</a></li>
                      <li><a href="#"><i class="fa fa-pencil"></i> Edit</a></li>
                      <li><a href="#"><i class="fa fa-download"></i> Download</a></li>
                      <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                    </ul>
                </div><!-- btn-group -->
                <div class="thmb-prev">
                  <img src="${ctx}/static/images/photos/media-audio.png" class="img-responsive" alt="" />
                </div>
                <h5 class="fm-title"><a href="">IWillSurvive.mp3</a></h5>
                <small class="text-muted">Added: Dec 31, 2013</small>
              </div><!-- thmb -->
            </div><!-- col-xs-6 -->
            
            <div class="col-xs-6 col-sm-4 col-md-3 document">
              <div class="thmb">
                <div class="ckbox ckbox-default">
                  <input type="checkbox" id="check9" value="1" />
                  <label for="check9"></label>
                </div>
                <div class="btn-group fm-group">
                    <button type="button" class="btn btn-default dropdown-toggle fm-toggle" data-toggle="dropdown">
                      <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu fm-menu" role="menu">
                      <li><a href="#"><i class="fa fa-share"></i> Share</a></li>
                      <li><a href="#"><i class="fa fa-envelope-o"></i> Email</a></li>
                      <li><a href="#"><i class="fa fa-pencil"></i> Edit</a></li>
                      <li><a href="#"><i class="fa fa-download"></i> Download</a></li>
                      <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                    </ul>
                </div><!-- btn-group -->
                <div class="thmb-prev">
                  <img src="${ctx}/static/images/photos/media-doc.png" class="img-responsive" alt="" />
                </div>
                <h5 class="fm-title"><a href="">MyDocuments.doc</a></h5>
                <small class="text-muted">Added: Dec 31, 2013</small>
              </div><!-- thmb -->
            </div><!-- col-xs-6 -->
            
            <div class="col-xs-6 col-sm-4 col-md-3 image">
              <div class="thmb">
                <div class="ckbox ckbox-default">
                  <input type="checkbox" id="check10" value="1" />
                  <label for="check10"></label>
                </div>
                <div class="btn-group fm-group">
                    <button type="button" class="btn btn-default dropdown-toggle fm-toggle" data-toggle="dropdown">
                      <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu fm-menu" role="menu">
                      <li><a href="#"><i class="fa fa-share"></i> Share</a></li>
                      <li><a href="#"><i class="fa fa-envelope-o"></i> Email</a></li>
                      <li><a href="#"><i class="fa fa-pencil"></i> Edit</a></li>
                      <li><a href="#"><i class="fa fa-download"></i> Download</a></li>
                      <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                    </ul>
                </div><!-- btn-group -->
                <div class="thmb-prev">
                  <a href="${ctx}/static/images/photos/media6.png" data-rel="prettyPhoto">
                    <img src="${ctx}/static/images/photos/media6.png" class="img-responsive" alt="" />
                  </a>
                </div>
                <h5 class="fm-title"><a href="">GreatCity.png</a></h5>
                <small class="text-muted">Added: Dec 30, 2013</small>
              </div><!-- thmb -->
            </div><!-- col-xs-6 -->
            
            <div class="col-xs-6 col-sm-4 col-md-3 video">
              <div class="thmb">
                <div class="ckbox ckbox-default">
                  <input type="checkbox" id="check11" value="1" />
                  <label for="check11"></label>
                </div>
                <div class="btn-group fm-group">
                    <button type="button" class="btn btn-default dropdown-toggle fm-toggle" data-toggle="dropdown">
                      <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu fm-menu" role="menu">
                      <li><a href="#"><i class="fa fa-share"></i> Share</a></li>
                      <li><a href="#"><i class="fa fa-envelope-o"></i> Email</a></li>
                      <li><a href="#"><i class="fa fa-pencil"></i> Edit</a></li>
                      <li><a href="#"><i class="fa fa-download"></i> Download</a></li>
                      <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                    </ul>
                </div><!-- btn-group -->
                <div class="thmb-prev">
                  <img src="${ctx}/static/images/photos/media7.png" class="img-responsive" alt="" />
                </div>
                <h5 class="fm-title"><a href="">InTheSea.mp4</a></h5>
                <small class="text-muted">Added: Dec 30, 2013</small>
              </div><!-- thmb -->
            </div><!-- col-xs-6 -->
            
          </div><!-- row -->
        </div><!-- col-sm-9 -->
        <div class="col-sm-3">
          <div class="fm-sidebar">
            
            <button class="btn btn-primary btn-block">Upload Files</button>
            
            <div class="mb30"></div>
            
            <h5 class="subtitle">Folders <a href="" class="pull-right">+ Add New Folder</a></h5>
            <ul class="folder-list">
              <li><a href=""><i class="fa fa-folder-o"></i> My Pictures</a></li>
              <li><a href=""><i class="fa fa-folder-o"></i> Facebook Photos</a></li>
              <li><a href=""><i class="fa fa-folder-o"></i> My Collection</a></li>
              <li><a href=""><i class="fa fa-folder-o"></i> Illustrations</a></li>
              <li><a href=""><i class="fa fa-folder-o"></i> TV Series</a></li>
              <li><a href=""><i class="fa fa-folder-o"></i> Downloaded Movies</a></li>
              <li><a href=""><i class="fa fa-folder-o"></i> E-book</a></li>
            </ul>
            
            <div class="mb30"></div>
            
            <h5 class="subtitle">Tags</h5>
            <ul class="tag-list">
              <li><a href="">Animation</a></li>
              <li><a href="">Design</a></li>
              <li><a href="">Trailer</a></li>
              <li><a href="">Short Film</a></li>
              <li><a href="">Dubstep</a></li>
              <li><a href="">Soundtrack</a></li>
              <li><a href="">Photography</a></li>
              <li><a href="">Macro</a></li>
              <li><a href="">Tuturials</a></li>
              <li><a href="">Documentation</a></li>
            </ul>
            
          </div>
        </div><!-- col-sm-3 -->
      </div>
    </div>
	
	<script src="${ctx}/static/js/jquery.prettyPhoto.js"></script>
	
	<script src="${ctx}/static/js/custom.js"></script>
	<script>
	  jQuery(document).ready(function(){
	    
	    "use strict";
	    
	    jQuery('.thmb').hover(function(){
	      var t = jQuery(this);
	      t.find('.ckbox').show();
	      t.find('.fm-group').show();
	    }, function() {
	      var t = jQuery(this);
	      if(!t.closest('.thmb').hasClass('checked')) {
	        t.find('.ckbox').hide();
	        t.find('.fm-group').hide();
	      }
	    });
	    
	    jQuery('.ckbox').each(function(){
	      var t = jQuery(this);
	      var parent = t.parent();
	      if(t.find('input').is(':checked')) {
	        t.show();
	        parent.find('.fm-group').show();
	        parent.addClass('checked');
	      }
	    });
	    
	    
	    jQuery('.ckbox').click(function(){
	      var t = jQuery(this);
	      if(!t.find('input').is(':checked')) {
	        t.closest('.thmb').removeClass('checked');
	        enable_itemopt(false);
	      } else {
	        t.closest('.thmb').addClass('checked');
	        enable_itemopt(true);
	      }
	    });
	    
	    jQuery('#selectall').click(function(){
	      if(jQuery(this).is(':checked')) {
	        jQuery('.thmb').each(function(){
	          jQuery(this).find('input').attr('checked',true);
	          jQuery(this).addClass('checked');
	          jQuery(this).find('.ckbox, .fm-group').show();
	        });
	        enable_itemopt(true);
	      } else {
	        jQuery('.thmb').each(function(){
	          jQuery(this).find('input').attr('checked',false);
	          jQuery(this).removeClass('checked');
	          jQuery(this).find('.ckbox, .fm-group').hide();
	        });
	        enable_itemopt(false);
	      }
	    });
	    
	    function enable_itemopt(enable) {
	      if(enable) {
	        jQuery('.itemopt').removeClass('disabled');
	      } else {
	        
	        // check all thumbs if no remaining checks
	        // before we can disabled the options
	        var ch = false;
	        jQuery('.thmb').each(function(){
	          if(jQuery(this).hasClass('checked'))
	            ch = true;
	        });
	        
	        if(!ch)
	          jQuery('.itemopt').addClass('disabled');
	      }
	    }
	    
	    jQuery("a[data-rel^='prettyPhoto']").prettyPhoto();
	    
	  });
</script>

</body>
</html>
