﻿<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Layouts</title>
</head>
<body>
<section>
    <div class="pageheader">
      <h2><i class="fa fa-laptop"></i> Skins &amp; Layouts <span>Subtitle goes here...</span></h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="index.html">Bracket</a></li>
          <li class="active">Layouts</li>
        </ol>
      </div>
    </div>
    
    <div class="contentpanel">
        <div class="panel panel-default panel-alt">
            <div class="panel-heading">
                <h4 class="panel-title">Sticky Header</h4>
            </div>
            <div class="panel-body">
                <p>You can enable the sticky header by adding <code>stickyheader</code> class manually to the body element in each page.</p>
                <pre>&lt;body class="stickyheader"&gt;...&lt;/body&gt;</pre>
                <p>or you can use jQuery to add stickeyheader class to body element in every page.</p>
                <pre>jQuery('body').addClass('stickyheader');</pre>
                <button class="btn btn-primary btn-stickyheader">See it in Action</button>
            </div>
        </div>

        
        <div class="panel panel-default panel-alt">
            <div class="panel-heading">
                <h4 class="panel-title">Sticky Left Panel</h4>
                <p>You can enable the sticky left panel by adding <code>sticky-leftpanel</code> to the element <code>leftpanel</code>.</p>
            </div>
            <div class="panel-body">
                <p>Take note that by making the leftpanel sticky the header should also be sticky to prevent broken layout.</p>
                <button class="btn btn-primary btn-stickyleftpanel">See it in Action</button>
            </div>
        </div>
        
        <div class="panel panel-default panel-alt">
            <div class="panel-heading">
                <h4 class="panel-title">Collapsed Menu (For Large Screen Only)</h4>
                <p>This will collapsed the left panel in every page by default. To enable, the <code>body</code> element should always have a class <code>leftpanel-collapsed</code>.
         This feature is for large screen only. Viewing it in any small devices should hide the left panel by default.</p>
            </div>
            <div class="panel-body">
                <button class="btn btn-primary btn-collapsedleft">See it in Action</button>
            </div>
        </div>
        
        <div class="panel panel-default panel-alt">
            <div class="panel-heading">
                <h4 class="panel-title">Change Skin</h4>
                <p>There's only 1 available skin to choose for right now. More will be coming soon in the next updates.</p>
            </div>
            <div class="panel-body">
                <select id="skinchoose" name="skinchoose" class="select2">
                    <option value="default">Default</option>
                    <option value="inverse">Inverse</option>
                    <option value="dodgerblue">DodgerBlue</option>
                    <option value="greyjoy">GreyJoy</option>
                    <option value="katniss">Katniss</option>
                    <option value="darkknight">DarkKnight</option>
                    <option value="bluenav">BlueNav</option>
                </select>&nbsp;
                <button class="btn btn-primary btn-changeskin">Change Skin</button>
                <div class="mb20"></div>
                <p>To manually add the skin into your page, just add the below code into the <code>&lt;head&gt;</code>.</p>
                <pre>&lt;link href="css/style.inverse.css" rel="stylesheet"&gt;</pre>
        
            </div>
        </div>
        
        <div class="panel panel-default panel-alt">
            <div class="panel-heading">
                <h4 class="panel-title">Change Font</h4>
                <p>Some devices don't render the default font used in this template properly so we've added some font choices for you to choose your own font by selecting the available font below.</p>
            </div>
            <div class="panel-body">
                <select id="fontchoose" name="fontchoose" class="select2">
                    <option value="default">Default (Lato)</option>
                    <option value="helvetica-neue">Helvetica Neue</option>
                    <option value="roboto">Roboto</option>
                </select>&nbsp;
                <button class="btn btn-primary btn-changefont">Change Font</button>
                <div class="mb20"></div>
                <p>To manually add the font changes into your page, just add the below code into the <code>&lt;head&gt;</code>.</p>
                <pre>&lt;link href="css/font.helvetica-neue.css" rel="stylesheet"&gt;</pre>
        
            </div>
        </div>
        
        <div class="mb20"></div>   
      
    </div>
    
	<script src="${ctx}/static/js/select2.min.js"></script>

	<script src="${ctx}/static/js/custom.js"></script>
	<script>
	    jQuery(document).ready(function(){
	        
	        "use strict";
	        
	        // DO NOT USE THE JAVASCRIPT BELOW. IT IS JUST FOR DEMO ONLY //
	        
	        if(jQuery.cookie('sticky-header')) {
	           jQuery('.btn-stickyheader').text('Disable Sticky Header'); 
	        }
	        
	        if(jQuery.cookie('sticky-leftpanel')) {
	           jQuery('.btn-stickyleftpanel').text('Disable Sticky Left Panel'); 
	        }
	        
	        if(jQuery.cookie('leftpanel-collapsed')) {
	           jQuery('.btn-collapsedleft').text('Disable Left Panel Collapsed'); 
	        }
	        
	        if(jQuery.cookie('change-skin')) {
	           jQuery('#skinchoose').val(jQuery.cookie('change-skin'));
	        }
	        
	        if(jQuery.cookie('change-font')) {
	           jQuery('#fontchoose').val(jQuery.cookie('change-font'));
	        }
	        
	        // Select2
	        jQuery(".select2").select2({
	            width: '200px',
	            minimumResultsForSearch: -1
	        });
	                
	        jQuery('.btn-stickyheader').click(function(){
	            
	            if(!jQuery.cookie('sticky-header')) {
	                jQuery.cookie('sticky-header', true, { path: '/' });
	                jQuery('body').addClass('stickyheader');
	                jQuery(this).text('Disable Sticky Header');
	            } else {
	                jQuery.removeCookie('sticky-header', { path: '/' });
	                jQuery('body').removeClass('stickyheader');
	                jQuery('.leftpanel').removeClass('sticky-leftpanel');
	                jQuery(this).text('See it in Action');
	            }
	        });
	        
	        jQuery('.btn-stickyleftpanel').click(function(){
	            
	            if(!jQuery.cookie('sticky-leftpanel')) {
	                jQuery.cookie('sticky-leftpanel', true, { path: '/' });
	                jQuery('body').addClass('stickyheader');
	                jQuery('.leftpanel').addClass('sticky-leftpanel');
	                jQuery(this).text('Disable Sticky Left Panel');
	            } else {
	                jQuery.removeCookie('sticky-leftpanel', { path: '/' });
	                if(!jQuery.cookie('sticky-header'))
	                    jQuery('body').removeClass('stickyheader');
	                jQuery('.leftpanel').removeClass('sticky-leftpanel');
	                jQuery(this).text('See it in Action');
	            }
	            
	        });
	        
	        jQuery('.btn-collapsedleft').click(function(){
	            
	            if(!jQuery.cookie('leftpanel-collapsed')) {
	                jQuery.cookie('leftpanel-collapsed', true, { path: '/' });
	                jQuery('body').addClass('leftpanel-collapsed');
	                jQuery('.menutoggle').addClass('menu-collapsed');
	                jQuery(this).text('Disable Disable Left Panel Collapsed');
	                jQuery('.nav-bracket .children').css({display: ''});
	            } else {
	                jQuery.removeCookie('leftpanel-collapsed', { path: '/' });
	                jQuery('body').removeClass('leftpanel-collapsed');
	                jQuery('.menutoggle').removeClass('menu-collapsed');
	                jQuery(this).text('See it in Action');
	            }
	        });
	        
	        jQuery('.btn-changeskin').click(function(){
	        
	            var selectedskin = jQuery('#skinchoose').val();
	            var s = jQuery.cookie('change-skin');
	            
	
	            if(!s) {                
	                if(selectedskin != 'default') {
	                    jQuery.cookie("change-skin", selectedskin, { path: '/' });
	                    jQuery('head').append('<link id="skinswitch" rel="stylesheet" href="${ctx}/static/css/style.'+selectedskin+'.css" />');
	                }
	            } else {
	                if(selectedskin != 'default') {
	                    jQuery('#skinswitch').attr('href','${ctx}/static/css/style.'+selectedskin+'.css');
	                    jQuery.cookie("change-skin", selectedskin, { path: '/' });
	                } else {
	                    jQuery.removeCookie('change-skin', { path: '/' });    
	                    jQuery('#skinswitch').remove();
	                }
	            }
	        });
	        
	        jQuery('.btn-changefont').click(function(){
	        
	            var selectedfont = jQuery('#fontchoose').val();
	            var ft = jQuery.cookie('change-font');
	
	            if(!ft) {                
	                if(selectedfont != 'default') {
	                    jQuery.cookie("change-font", selectedfont, { path: '/' });
	                    jQuery('head').append('<link id="fontswitch" rel="stylesheet" href="${ctx}/static/css/font.'+selectedfont+'.css" />');
	                }
	            } else {
	                if(selectedfont != 'default') {
	                    jQuery('#fontswitch').attr('${ctx}/static/css/font.'+selectedfont+'.css');
	                } else {
	                    jQuery.removeCookie('change-font', { path: '/' });    
	                    jQuery('#fontswitch').remove();
	                }
	            }
	        });
	        
	    });
	</script>
</body>
</html>
