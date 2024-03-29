﻿<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Code Editor</title>
  <link rel="stylesheet" href="${ctx}/static/css/codemirror/codemirror.css" />
  <link rel="stylesheet" href="${ctx}/static/css/codemirror/theme/ambiance.css">
</head>
<body>
    <div class="pageheader">
      <h2><i class="fa fa-pencil"></i> Code Editor <span>Subtitle goes here...</span></h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="index.html">Bracket</a></li>
          <li><a href="general-forms.html">Forms</a></li>
          <li class="active">Code Editor</li>
        </ol>
      </div>
    </div>
    
    <div class="contentpanel">
        
        <div class="panel panel-default">
            <div class="panel-body">
                <p>This template uses CodeMirror as code editor to be used in this template. To know more about CodeMirror, click the buttons below</p>
                <p><a href="http://codemirror.net/" class="btn btn-primary mr5" target=_blank">Visit Their Site</a> <a class="btn btn-default" target="_blank" href="http://codemirror.net/doc/manual.html">User Manual</a></p>
            </div>
        </div>
      
        <div class="panel panel-default panel-alt">
            <div class="panel-heading">
                <h4 class="panel-title">XML/HTML Mode</h4>
                <p>The XML mode supports two configuration parameters <code>htmlMode</code> and <code>alignCDATA</code>. To learn more visit <a target="_blank" href="http://codemirror.net/mode/xml/index.html">here</a>. To view more languages visit <a href="http://codemirror.net/mode/index.html" target="_blank">here</a></p>
            </div><!-- panel-heading -->
            <div class="panel-body nopadding">
                <textarea id="code" name="code">
&lt;html style="color: green"&gt;
  &lt;!-- this is a comment --&gt;
  &lt;head&gt;
    &lt;title&gt;HTML Example&lt;/title&gt;
  &lt;/head&gt;
  &lt;body&gt;
    The indentation tries to be &lt;em&gt;somewhat &amp;quot;do what
    I mean&amp;quot;&lt;/em&gt;... but might not match your style.
  &lt;/body&gt;
&lt;/html&gt;
				</textarea>    
            </div><!-- panel-body -->
            <div class="panel-footer">
                <div class="alert alert-info nomargin">
                    <p>The editor has a height of 300px. If you want to change it, just open the file css/codemirror/codemirror.css in line 3. Remove height for autoresize.</p>
                </div>
            </div>
        </div><!-- panel -->
        
        <div class="panel panel-default panel-alt">
            <div class="panel-heading">
                <h4 class="panel-title">Code Editor Theme</h4>
                <p>The code editor comes with different themes such as below. You can view more theme demos from the CodeMirror site by going <a href="http://codemirror.net/demo/theme.html" target="_blank">here</a></p>
            </div><!-- panel-heading -->
            <div class="panel-body nopadding">
                <textarea id="code2" name="code">
function findSequence(goal) {
  function find(start, history) {
    if (start == goal)
      return history;
    else if (start > goal)
      return null;
    else
      return find(start + 5, "(" + history + " + 5)") ||
             find(start * 3, "(" + history + " * 3)");
  }
  return find(1, "1");
}
				</textarea>    
            </div><!-- panel-body -->
        </div><!-- panel -->
        
        <div class="panel panel-default panel-alt">
            <div class="panel-heading">
                <h4 class="panel-title">AutoFormatting Of Code</h4>
                <p>Select a piece of code and click one of the links below to apply automatic formatting to the selected text or comment/uncomment the selected text. Note that the formatting behavior depends on the current block's mode. </p>
                <div class="mb15"></div>
                <button class="btn btn-primary btn-sm mr5 autoformat">Autoformat Selected</button>
                <button class="btn btn-primary btn-sm mr5 comment">Comment Selected</button>
                <button class="btn btn-primary btn-sm uncomment">Uncommment Selected</button>
            </div><!-- panel-heading -->
            <div class="panel-body nopadding">
                <textarea id="code3" name="code">
<script> function (s,e){ for(var i=0; i < 1; i++) test("test();a=1");} </script>
<script>function test(c){ for (var i = 0; i < 10; i++){	process("a.b();c = null;", 300);}}</script>
<table><tr><td>test 1</td></tr><tr><td>test 2</td></tr></table>
<script> function test() { return 1;} </script>
<style> .test { font-size: medium; font-family: monospace; }</style>
				</textarea>    
            </div><!-- panel-body -->
        </div><!-- panel -->
    </div><!-- contentpanel -->

	<script src="${ctx}/static/js/codemirror/codemirror.js"></script>
	<script src="${ctx}/static/js/codemirror/formatting.js"></script>
	<script src="${ctx}/static/js/codemirror/mode/xml.js"></script>
	<script src="${ctx}/static/js/codemirror/mode/javascript.js"></script>
	
	<script src="${ctx}/static/js/custom.js"></script>

	<script>
	    "use strict";
	    
	    CodeMirror.fromTextArea(document.getElementById("code"), {
	        mode: {name: "xml", alignCDATA: true},
	        lineNumbers: true
	    });
	    
	    CodeMirror.fromTextArea(document.getElementById("code2"), {
	        mode: {name: "javascript"},
	        lineNumbers: true,
	        theme: 'ambiance'
	    });
	    
	    var editor = CodeMirror.fromTextArea(document.getElementById("code3"), {
	        mode: {name: "javascript"},
	        lineNumbers: true,
	    });
	    CodeMirror.commands["selectAll"](editor);
	    
	    function getSelectedRange() {
	        return { from: editor.getCursor(true), to: editor.getCursor(false) };
	    }
	      
	    function autoFormatSelection() {
	        var range = getSelectedRange();
	        editor.autoFormatRange(range.from, range.to);
	    }
	      
	    function commentSelection(isComment) {
	        var range = getSelectedRange();
	        editor.commentRange(isComment, range.from, range.to);
	    }
	    
	    jQuery(document).ready(function(){
	        
	        jQuery('.autoformat').click(function(){
	            autoFormatSelection();
	        });
	        
	        jQuery('.comment').click(function(){
	            commentSelection(true);
	        });
	        
	        jQuery('.uncomment').click(function(){
	            commentSelection(false);
	        });
	    
	    });
	  
	</script>
</body>
</html>
