﻿<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <title>WYSIWYG</title>
  <link rel="stylesheet" href="${ctx}/static/css/bootstrap-wysihtml5.css" /> 
</head>
<body>
    <div class="pageheader">
      <h2><i class="fa fa-pencil"></i> WYSIWYG <span>Subtitle goes here...</span></h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="index.html">Bracket</a></li>
          <li><a href="general-forms.html">Forms</a></li>
          <li class="active">WYSIWYG</li>
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
          <h4 class="panel-title">HTML 5 WYSIWYG Editor</h4>
          <p>Open source rich text editor based on HTML5 and the progressive-enhancement approach. Uses a sophisticated security concept and aims to generate fully valid HTML5 markup by preventing unmaintainable tag soups and inline styles. <a href="http://jhollingworth.github.io/bootstrap-wysihtml5/" target="_blank">http://jhollingworth.github.io/bootstrap-wysihtml5/</a></p>
        </div>
        <div class="panel-body">
          <textarea id="wysiwyg" placeholder="Enter text here..." class="form-control" rows="10"></textarea>
        </div>
      </div>
      
      <div class="panel panel-default">
        <div class="panel-heading">
          <div class="panel-btns">
            <a href="" class="panel-close">&times;</a>
            <a href="" class="minimize">&minus;</a>
          </div>
          <h4 class="panel-title">CKEditor</h4>
          <p>CKEditor is a ready-for-use HTML text editor designed to simplify web content creation. It's a WYSIWYG editor that brings common word processor features directly to your web pages. <a href="http://ckeditor.com/" target="_blank">http://ckeditor.com/</a></p>
        </div>
        <div class="panel-body">
          <textarea id="ckeditor" placeholder="Enter text here..." class="form-control" rows="10"></textarea>
        </div>
      </div>
            
      <div class="panel panel-default">
        <div class="panel-heading">
          <div class="panel-btns">
            <a href="" class="panel-close">&times;</a>
            <a href="" class="minimize">&minus;</a>
          </div>
          <h4 class="panel-title">Inline Editing</h4>
          <p>This sample page demonstrates the inline editing feature - CKEditor instances will be created automatically from page elements with <code>contentEditable</code> attribute set to value <code>true</code></p>
        </div>
        <div class="panel-body">
            <div class="row">
                
                <div class="col-sm-6">
                    <div id="inlineedit2" contenteditable="true">
                        <h3>What is Lorem Ipsum?</h3>
                        <p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                    </div>
                </div>
                
                <div class="col-sm-6">
                    <div id="inlineedit1" contenteditable="true">
                        <h3>CSS3 Media Queries</h3>
                        <p>CSS3 introduces an extension on the media types you might already use in HTML4 and CSS2. These media types allow you to define style sheets specifically for screen and print media types, as well as others. But with CSS3 media queries, you can be more precise about where exactly you want to apply the styles it defines.</p>
                    </div>
                </div>
            </div>
          
        </div>
      </div>
      
      <div class="panel panel-default">
        <div class="panel-heading">
          <div class="panel-btns">
            <a href="" class="panel-close">&times;</a>
            <a href="" class="minimize">&minus;</a>
          </div>
          <h4 class="panel-title">Replace DIV On The Fly</h4>
          <p>This sample shows how to automatically replace <code>&lt;div&gt;</code> elements with a CKEditor instance on the fly, following user's <strong>doubleclick</strong>.</p>
        </div>
        <div class="panel-body">
            
            <div class="ck-editable">
                <h4>Paragraph 1</h4>
                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Cras et ipsum quis mi semper accumsan. Integer pretium dui id massa. Suspendisse in nisl sit amet urna rutrum imperdiet. Nulla eu tellus. Donec ante nisi, ullamcorper quis, fringilla nec, sagittis eleifend, pede. Nulla commodo interdum massa. Donec id metus. Fusce eu ipsum. Suspendisse auctor. Phasellus fermentum porttitor risus.</p>
            </div>
            
            <div class="ck-editable">
                <h4>Paragraph 2</h4>
                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Cras et ipsum quis mi semper accumsan. Integer pretium dui id massa. Suspendisse in nisl sit amet urna rutrum imperdiet. Nulla eu tellus. Donec ante nisi, ullamcorper quis, fringilla nec, sagittis eleifend, pede. Nulla commodo interdum massa. Donec id metus. Fusce eu ipsum. Suspendisse auctor. Phasellus fermentum porttitor risus.</p>
            </div>
            
            <div class="ck-editable">
                <h4>Paragraph 3</h4>
                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Cras et ipsum quis mi semper accumsan. Integer pretium dui id massa. Suspendisse in nisl sit amet urna rutrum imperdiet. Nulla eu tellus. Donec ante nisi, ullamcorper quis, fringilla nec, sagittis eleifend, pede. Nulla commodo interdum massa. Donec id metus. Fusce eu ipsum. Suspendisse auctor. Phasellus fermentum porttitor risus.</p>
            </div>
          
        </div>
      </div>
      
    </div><!-- contentpanel -->

	<script src="${ctx}/static/js/wysihtml5-0.3.0.min.js"></script>
	<script src="${ctx}/static/js/bootstrap-wysihtml5.js"></script>
	<script src="${ctx}/static/js/ckeditor/ckeditor.js"></script>
	<script src="${ctx}/static/js/ckeditor/adapters/jquery.js"></script>
	
	<script src="${ctx}/static/js/custom.js"></script>
	
	<script>
	jQuery(document).ready(function(){
	    
	    "use strict";
	    
	  // HTML5 WYSIWYG Editor
	  jQuery('#wysiwyg').wysihtml5({color: true,html:true});
	  
	  // CKEditor
	  jQuery('#ckeditor').ckeditor();
	  
	  jQuery('#inlineedit1, #inlineedit2').ckeditor();
	  
	  // Uncomment the following code to test the "Timeout Loading Method".
	  // CKEDITOR.loadFullCoreTimeout = 5;
	
	  window.onload = function() {
	  // Listen to the double click event.
	  if ( window.addEventListener )
		document.body.addEventListener( 'dblclick', onDoubleClick, false );
	  else if ( window.attachEvent )
		document.body.attachEvent( 'ondblclick', onDoubleClick );
	  };
	
	  function onDoubleClick( ev ) {
		// Get the element which fired the event. This is not necessarily the
		// element to which the event has been attached.
		var element = ev.target || ev.srcElement;
	
		// Find out the div that holds this element.
		var name;
	
		do {
			element = element.parentNode;
		}
		while ( element && ( name = element.nodeName.toLowerCase() ) &&
			( name != 'div' || element.className.indexOf( 'editable' ) == -1 ) && name != 'body' );
	
		if ( name == 'div' && element.className.indexOf( 'editable' ) != -1 )
			replaceDiv( element );
		}
	
		var editor;
	
		function replaceDiv( div ) {
			if ( editor )
				editor.destroy();
			editor = CKEDITOR.replace( div );
		}
	
	});
	</script>
</body>
</html>
