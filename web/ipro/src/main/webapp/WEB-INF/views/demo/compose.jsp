<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Compose Email</title>
  <link rel="stylesheet" href="${ctx}/static/css/bootstrap-wysihtml5.css" />
</head>

<body>
    <div class="pageheader">
      <h2><i class="fa fa-envelope"></i> Compose Email</h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="index.html">Bracket</a></li>
          <li><a href="email.html">Email</a></li>
          <li class="active">Compose Email</li>
        </ol>
      </div>
    </div>
    
    <div class="contentpanel panel-email">

        <div class="row">
            <div class="col-sm-3 col-lg-2">
                <a href="compose.html" class="btn btn-danger btn-block btn-compose-email">Compose Email</a>
                
                <ul class="nav nav-pills nav-stacked nav-email">
                    <li class="active">
                    <a href="${ctx}/demo/email.html">
                        <span class="badge pull-right">2</span>
                        <i class="glyphicon glyphicon-inbox"></i> Inbox
                    </a>
                    </li>
                    <li><a href="#"><i class="glyphicon glyphicon-star"></i> Starred</a></li>
                    <li><a href="#"><i class="glyphicon glyphicon-send"></i> Sent Mail</a></li>
                    <li>
                    <a href="#">
                        <span class="badge pull-right">3</span>
                        <i class="glyphicon glyphicon-pencil"></i> Draft
                    </a>
                    </li>
                    <li><a href="#"><i class="glyphicon glyphicon-trash"></i> Trash</a></li>
                </ul>
                
                <div class="mb30"></div>
                
                <h5 class="subtitle">Folders</h5>
                <ul class="nav nav-pills nav-stacked nav-email mb20">
                <li>
                  <a href="${ctx}/demo/email.html">
                    <span class="badge pull-right">2</span>
                    <i class="glyphicon glyphicon-folder-open"></i> Conference
                  </a>
                </li>
                <li><a href="#"><i class="glyphicon glyphicon-folder-open"></i> Newsletter</a></li>
                <li><a href="#"><i class="glyphicon glyphicon-folder-open"></i> Invitations</a></li>
                <li>
                  <a href="#">
                    <i class="glyphicon glyphicon-folder-open"></i> Promotions
                  </a>
                </li>
              </ul>
                
            </div><!-- col-sm-3 -->
            
            <div class="col-sm-9 col-lg-10">
                
                <div class="panel panel-default">
                    <div class="panel-body">
                        
                        <div class="form-group mb5">
                            <select class="chosen-select" multiple data-placeholder="Recipients">
                                <option value=""></option>
                                <option value="Anna Fat">Anna Fat</option>
                                <option value="Bilbo Bagens">Belbo Bagens</option>
                                <option value="Catherine Zones">Catherine Zones</option>
                                <option value="Daniel Powter">Danie Powter</option>
                                <option value="Ellen Page">Ellen Page</option>
                                <option value="Francis Yan">Francis Yan</option>
                                <option value="Gerald Dom">Gerald Dom</option>
                                <option value="Helder Carasbong">Helder Carasbong</option>
                                <option value="Ian Page">Ian Page</option>
                                <option value="John Doe">John Doe</option>
                                <option value="Kik Wee">Kik Wee</option>
                                <option value="Lance Arms">Lance Arms</option>
                                <option value="Mike Tyson">Mike Tyson</option>
                                <option value="Niel Strong">Niel Strong</option>
                                <option value="Owen Wilson">Owen Wilson</option>
                                <option value="Penelope Cruz">Penelope Cruz</option>
                                <option value="Queen King">Queen King</option>
                                <option value="Ralph Lamb">Ralph Lamb</option>
                                <option value="Sansa Stark">Sansa Stark</option>
                                <option value="Tyron Mike">Tyron Mike</option>
                                <option value="Umber Heard">Umber Heard</option>
                                <option value="Vanessa Hudgens">Vanessa Hudgens</option>
                                <option value="William Jor">Willliam Jor</option>
                                <option value="Xavier Saint">Xavier Saint</option>
                                <option value="Yam Concept">Yam Concept</option>
                                <option value="Zach Randolph">Zach Randolph</option>
                            </select>
                        </div>
                        
                        <div id="cc" class="form-group mb5" style="display: none">
                            <select class="chosen-select" multiple data-placeholder="CC">
                                <option value=""></option>
                                <option value="Anna Fat">Anna Fat</option>
                                <option value="Bilbo Bagens">Belbo Bagens</option>
                                <option value="Catherine Zones">Catherine Zones</option>
                                <option value="Daniel Powter">Danie Powter</option>
                                <option value="Ellen Page">Ellen Page</option>
                                <option value="Francis Yan">Francis Yan</option>
                                <option value="Gerald Dom">Gerald Dom</option>
                                <option value="Helder Carasbong">Helder Carasbong</option>
                                <option value="Ian Page">Ian Page</option>
                                <option value="John Doe">John Doe</option>
                                <option value="Kik Wee">Kik Wee</option>
                                <option value="Lance Arms">Lance Arms</option>
                                <option value="Mike Tyson">Mike Tyson</option>
                                <option value="Niel Strong">Niel Strong</option>
                                <option value="Owen Wilson">Owen Wilson</option>
                                <option value="Penelope Cruz">Penelope Cruz</option>
                                <option value="Queen King">Queen King</option>
                                <option value="Ralph Lamb">Ralph Lamb</option>
                                <option value="Sansa Stark">Sansa Stark</option>
                                <option value="Tyron Mike">Tyron Mike</option>
                                <option value="Umber Heard">Umber Heard</option>
                                <option value="Vanessa Hudgens">Vanessa Hudgens</option>
                                <option value="William Jor">Willliam Jor</option>
                                <option value="Xavier Saint">Xavier Saint</option>
                                <option value="Yam Concept">Yam Concept</option>
                                <option value="Zach Randolph">Zach Randolph</option>
                            </select>
                        </div>
                        
                        <div id="bcc" class="form-group mb5" style="display: none">
                            <select class="chosen-select" multiple data-placeholder="BCC">
                                <option value=""></option>
                                <option value="Anna Fat">Anna Fat</option>
                                <option value="Bilbo Bagens">Belbo Bagens</option>
                                <option value="Catherine Zones">Catherine Zones</option>
                                <option value="Daniel Powter">Danie Powter</option>
                                <option value="Ellen Page">Ellen Page</option>
                                <option value="Francis Yan">Francis Yan</option>
                                <option value="Gerald Dom">Gerald Dom</option>
                                <option value="Helder Carasbong">Helder Carasbong</option>
                                <option value="Ian Page">Ian Page</option>
                                <option value="John Doe">John Doe</option>
                                <option value="Kik Wee">Kik Wee</option>
                                <option value="Lance Arms">Lance Arms</option>
                                <option value="Mike Tyson">Mike Tyson</option>
                                <option value="Niel Strong">Niel Strong</option>
                                <option value="Owen Wilson">Owen Wilson</option>
                                <option value="Penelope Cruz">Penelope Cruz</option>
                                <option value="Queen King">Queen King</option>
                                <option value="Ralph Lamb">Ralph Lamb</option>
                                <option value="Sansa Stark">Sansa Stark</option>
                                <option value="Tyron Mike">Tyron Mike</option>
                                <option value="Umber Heard">Umber Heard</option>
                                <option value="Vanessa Hudgens">Vanessa Hudgens</option>
                                <option value="William Jor">Willliam Jor</option>
                                <option value="Xavier Saint">Xavier Saint</option>
                                <option value="Yam Concept">Yam Concept</option>
                                <option value="Zach Randolph">Zach Randolph</option>
                            </select>
                        </div>
                        
                        <a href="" id="acc" class="inblock mb5"><small>Add CC</small></a> &nbsp; <a href="" class="inblock mb5" id="abcc"><small>Add BCC</small></a>
                        
                        <div class="form-group">
                            <input type="text" name="subject" placeholder="Subject" class="form-control" />
                        </div>
                        
                        <textarea id="wysiwyg" placeholder="Your message here..." class="form-control" rows="20"></textarea>
                        
                    </div><!-- panel-body -->
                    <div class="panel-footer">
                        <button class="btn btn-primary">Send</button>
                    </div>
                </div><!-- panel -->
                
            </div><!-- col-sm-9 -->
            
        </div><!-- row -->
    
    </div>
    
	<script src="${ctx}/static/js/chosen.jquery.min.js"></script>
	<script src="${ctx}/static/js/wysihtml5-0.3.0.min.js"></script>
	<script src="${ctx}/static/js/bootstrap-wysihtml5.js"></script>
	
	<script src="${ctx}/static/js/custom.js"></script>
	<script>
	    jQuery(document).ready(function(){
	        
	        "use strict";
	        
	        // Chosen Select
	        jQuery(".chosen-select").chosen({'width':'100%','white-space':'nowrap'});
	    });
	    
	    jQuery('#acc').click(function(){
	        jQuery('#cc').show();
	        jQuery(this).hide();
	        return false;
	    });
	    
	    jQuery('#abcc').click(function(){
	        jQuery('#bcc').show();
	        jQuery(this).hide();
	        return false;
	    });
	    
	    // HTML5 WYSIWYG Editor
	    jQuery('#wysiwyg').wysihtml5({color: true,html:true});
	    
	</script>
</body>
</html>
