﻿<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Typography</title>
</head>

<body>
    <div class="pageheader">
      <h2><i class="fa fa-font"></i> Typography <span>Subtitle goes here...</span></h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="index.html">Bracket</a></li>
          <li><a href="buttons.html">UI Elements</a></li>
          <li class="active">Typography</li>
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
              </div>
              <h4 class="panel-title">Headings</h4>
              <p>All HTML headings, <code>h1</code> through <code>h6</code>, are available. .h1 through .h6 classes are also available, for when you want to match the font styling of a heading but still want your text to be displayed inline.</p>
            </div><!-- panel-heading -->
            <div class="panel-body">
              <h1>h1. Bootstrap heading</h1>
              <h2>h2. Bootstrap heading</h2>
              <h3>h3. Bootstrap heading</h3>
              <h4>h4. Bootstrap heading</h4>
              <h5>h5. Bootstrap heading</h5>
              <h6>h6. Bootstrap heading</h6>
            </div>
          </div><!-- panel -->
        </div><!-- col-md-6 -->
        <div class="col-md-6">
          <div class="panel panel-default">
            <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div>
              <h4 class="panel-title">Body Copy</h4>
              <p>Bootstrap's global default font-size is 14px, with a line-height of 1.428. This is applied to the <code>&lt;body&gt;</code> and all paragraphs. In addition, <code>&lt;p&gt;</code> receive a bottom margin of half their computed line-height (10px by default).</p>
            </div><!-- panel-heading -->
            <div class="panel-body">
              <p>Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.</p>
              <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec ullamcorper nulla non metus auctor fringilla. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec ullamcorper nulla non metus auctor fringilla.</p>
              <p>Maecenas sed diam eget risus varius blandit sit amet non magna. Donec id elit non mi porta gravida at eget metus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>
            </div>
          </div><!-- panel -->
        </div><!-- col-md-6 -->
        
      </div><!-- row -->
      
      <div class="panel panel-default">
        <div class="panel-heading">
          <div class="panel-btns">
            <a href="" class="panel-close">&times;</a>
            <a href="" class="minimize">&minus;</a>
          </div>
          <h4 class="panel-title">Lead Body Copy</h4>
          <p>Make a paragraph stand out by adding <code>.lead</code>.</p>
        </div><!-- panel-heading -->
        <div class="panel-body">
          <p class="lead">Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus.</p>
          <code>&lt;p class="lead"&gt;...&lt;/p&gt;</code>
        </div>
      </div><!-- panel -->
      
      <div class="row">
        <div class="col-md-6">
          <div class="panel panel-default">
            <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div>
              <h4 class="panel-title">Font Color</h4>
              <p>Convey meaning through color with a handful of emphasis utility classes. These may also be applied to links and will darken on hover just like our default link styles.</p>
            </div><!-- panel-heading -->
            <div class="panel-body">
              <p class="text-muted">Fusce dapibus, tellus ac cursus commodo, tortor mauris nibh.</p>
              <p class="text-primary">Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p class="text-success">Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</p>
              <p class="text-info">Maecenas sed diam eget risus varius blandit sit amet non magna.</p>
              <p class="text-warning">Etiam porta sem malesuada magna mollis euismod.</p>
              <p class="text-danger">Donec ullamcorper nulla non metus auctor fringilla.</p>
            </div>
          </div><!-- panel -->
        </div><!-- col-md-6 -->
        
        <div class="col-md-6">
          <div class="panel panel-default">
            <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div>
              <h4 class="panel-title">Addresses</h4>
              <p>Present contact information for the nearest ancestor or the entire body of work. Preserve formatting by ending all lines with <code>&lt;br /&gt;</code>.</p>
            </div><!-- panel-heading -->
            <div class="panel-body">
              <address>
                <strong>Twitter, Inc.</strong><br>
                795 Folsom Ave, Suite 600<br>
                San Francisco, CA 94107<br>
                <abbr title="Phone">P:</abbr> (123) 456-7890
              </address>
              <address>
                <strong>Full Name</strong><br>
                <a href="mailto:#">first.last@example.com</a>
              </address>
            </div>
          </div><!-- panel -->
        </div><!-- col-md-6 -->
      </div><!-- row -->
      
      <div class="panel panel-default">
        <div class="panel-heading">
          <div class="panel-btns">
            <a href="" class="panel-close">&times;</a>
            <a href="" class="minimize">&minus;</a>
          </div>
          <h4 class="panel-title">Blockquote</h4>
          <p>Wrap <code>&lt;blockquote&gt;</code> around any HTML as the quote. For straight quotes, we recommend a <code>&lt;p&gt;</code>.</p>
        </div><!-- panel-heading -->
        <div class="panel-body">
          <blockquote>
            <i class="fa fa-quote-left"></i>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
          </blockquote>
          
          <blockquote>
            <i class="fa fa-quote-left"></i>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
            <small>Someone famous in <cite title="Source Title">Source Title</cite></small>
          </blockquote>

        </div><!-- panel-body -->
      </div><!-- panel -->
      
      <div class="panel panel-default">
        <div class="panel-heading">
          <div class="panel-btns">
            <a href="" class="panel-close">&times;</a>
            <a href="" class="minimize">&minus;</a>
          </div>
          <h4 class="panel-title">List</h4>
        </div><!-- panel-heading -->
        <div class="panel-body">
          <div class="row">
            <div class="col-md-4">
              <h5 class="subtitle">Unordered</h5>
              <p>A list of items in which the order does not explicitly matter.</p>
              <ul>
                <li>Lorem ipsum dolor sit amet</li>
                <li>Consectetur adipiscing elit
                  <ul>
                    <li>Phasellus iaculis neque</li>
                    <li>Purus sodales ultricies</li>
                  </ul>
                </li>
                <li>Integer molestie lorem at massa</li>
              </ul>
            </div><!-- col-md-4 -->
            
            <div class="col-md-4">
              <h5 class="subtitle">Ordered</h5>
              <p>A list of items in which the order does explicitly matter.</p>
              <ol>
                <li>Lorem ipsum dolor sit amet</li>
                <li>Consectetur adipiscing elit
                  <ol>
                    <li>Phasellus iaculis neque</li>
                    <li>Purus sodales ultricies</li>
                  </ol>
                </li>
                <li>Integer molestie lorem at massa</li>
              </ol>
            </div>
            
            <div class="col-md-4">
              <h5 class="subtitle">Unstyled</h5>
              <p>A list of items with class of <code>.list-unstyled</code>.</p>
              <ul class="list-unstyled">
                <li>Lorem ipsum dolor sit amet</li>
                <li>Consectetur adipiscing elit
                  <ol>
                    <li>Phasellus iaculis neque</li>
                    <li>Purus sodales ultricies</li>
                  </ol>
                </li>
                <li>Integer molestie lorem at massa</li>
              </ul>
            </div>
            
          </div><!-- row -->
        </div><!-- panel-body -->
      </div><!-- panel -->
      
      <div class="panel panel-default">
        <div class="panel-heading">
          <div class="panel-btns">
            <a href="" class="panel-close">&times;</a>
            <a href="" class="minimize">&minus;</a>
          </div>
          <h4 class="panel-title">Wells</h4>
          <p>Use the well as a simple effect on an element to give it an inset effect.</p>
        </div><!-- panel-heading -->
        <div class="panel-body">
          <div class="row">
            <div class="col-md-4">
              <div class="well">Look, I'm in well</div>
            </div>
            <div class="col-md-4">
              <div class="well well-lg">Look, I'm in a large well</div>
            </div>
            <div class="col-md-4">
              <div class="well well-sm">Look, I'm in a small well</div>
            </div>
          </div>
        </div><!-- panel-body -->
      </div><!-- panel -->
    
    </div><!-- contentpanel -->
    
	<script src="${ctx}/static/js/custom.js"></script>
</body>
</html>
