<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Sliders</title>
</head>
<body>
    <div class="pageheader">
      <h2><i class="fa fa-arrows-h"></i> Sliders <span>Subtitle goes here...</span></h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="index.html">Bracket</a></li>
          <li><a href="buttons.html">UI Elements</a></li>
          <li class="active">Sliders</li>
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
              </div><!-- panel-btns -->
              <h4 class="panel-title">Basic Slider</h4>
              <p>The basic slider is horizontal and has a single handle that can be moved with the mouse or by using the arrow keys.</p>
            </div><!-- panel-heading -->
            <div class="panel-body">
              <div id="slider" class="mb20"></div>
              <div id="slider-primary" class="slider-primary mb20"></div>
              <div id="slider-success" class="slider-success mb20"></div>
              <div id="slider-warning" class="slider-warning mb20"></div>
              <div id="slider-danger" class="slider-danger mb20"></div>
              <div id="slider-info" class="slider-info"></div>
            </div><!-- panel-body -->
          </div><!-- panel -->
        </div><!-- col-md-6 -->
        
        <div class="col-md-6">
          <div class="panel panel-default">
            <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div><!-- panel-btns -->
              <h4 class="panel-title">Range Slider</h4>
              <p>Set the range option to true to capture a range of values with two drag handles. The space between the handles is filled with a different background color to indicate those values are selected.</p>
            </div><!-- panel-heading -->
            <div class="panel-body">
              <div id="slider-range" class="slider-primary mb20"></div>
              <div id="slider-range-success" class="slider-success mb20"></div>
              <div id="slider-range-danger" class="slider-danger mb20"></div>
              <div id="slider-range-warning" class="slider-warning mb20"></div>
              <div id="slider-range-info" class="slider-info"></div>
            </div><!-- panel-body -->
          </div><!-- panel -->
        </div><!-- col-md-6 -->
      </div><!-- row -->
      
      <div class="row">
        <div class="col-md-6">
          <div class="panel panel-default">
            <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div><!-- panel-btns -->
              <h4 class="panel-title">Range With Fixed Maximum</h4>
              <p>Fix the maximum value of the range slider so that the user can only select a minimum. Set the <code>range</code> option to <code>max</code>.</p>
            </div><!-- panel-heading -->
            <div class="panel-body">
              <div id="slider-max"></div>
            </div><!-- panel-body -->
          </div><!-- panel -->
        </div><!-- col-md-6 -->
        
        <div class="col-md-6">
          <div class="panel panel-default">
            <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div><!-- panel-btns -->
              <h4 class="panel-title">Range With Fixed Minimum</h4>
              <p>Fix the minimum value of the range slider so that the user can only select a maximum. Set the <code>range</code> option to <code>min</code>.</p>
            </div><!-- panel-heading -->
            <div class="panel-body">
              <div id="slider-min"></div>
            </div><!-- panel-body -->
          </div><!-- panel -->
        </div><!-- col-md-6 -->
      </div><!-- row -->
      
      <div class="row">
        <div class="col-md-6">
          <div class="panel panel-default">
            <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div><!-- panel-btns -->
              <h4 class="panel-title">Vertical Slider</h4>
              <p>Change the <code>orientation</code> of the slider to <code>vertical</code>. Assign a height value via <code>.height()</code> or by setting the height through CSS, and set the orientation option to <code>vertical</code></p>
            </div><!-- panel-heading -->
            <div class="panel-body">
              <div id="vslider" class="mr30" style="height: 200px;"></div>
              <div id="vslider-primary" class="slider-primary mr30" style="height: 200px;"></div>
              <div id="vslider-success" class="slider-success mr30" style="height: 200px;"></div>
              <div id="vslider-warning" class="slider-warning mr30" style="height: 200px;"></div>
              <div id="vslider-danger" class="slider-danger mr30" style="height: 200px;"></div>
              <div id="vslider-info" class="slider-info" style="height: 200px;"></div>
            </div><!-- panel-body -->
          </div><!-- panel -->
        </div><!-- col-md-6 -->
        
        <div class="col-md-6">
          <div class="panel panel-default">
            <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div><!-- panel-btns -->
              <h4 class="panel-title">Vertical Range Slider</h4>
              <p>Change the <code>orientation</code> of the range slider to <code>vertical</code>. Assign a height value via <code>.height()</code> or by setting the height through CSS, and set the orientation option to <code>vertical</code></p>
            </div><!-- panel-heading -->
            <div class="panel-body">
              <div id="vslider-range" class="slider-primary mr30" style="height: 200px;"></div>
              <div id="vslider-range-success" class="slider-success mr30" style="height: 200px;"></div>
              <div id="vslider-range-danger" class="slider-danger mr30" style="height: 200px;"></div>
              <div id="vslider-range-warning" class="slider-warning mr30" style="height: 200px;"></div>
              <div id="vslider-range-info" class="slider-info" style="height: 200px;"></div>
            </div><!-- panel-body -->
          </div><!-- panel -->
        </div><!-- col-md-6 -->
      </div><!-- row -->
            
    </div><!-- contentpanel -->
    
	<script src="${ctx}/static/js/jquery-ui-1.10.3.min.js"></script>
	<script src="${ctx}/static/js/jquery.ui.touch-punch.min.js"></script>
	
	<script src="${ctx}/static/js/custom.js"></script>
	<script>
	  jQuery(document).ready(function() {
	    
	    "use strict";
	    
	    // Basic Slider
	    jQuery('#slider').slider({
	      range: "min",
	      max: 100,
	      value: 50
	    });
	    
	    // Basic Slider: Primary
	    jQuery('#slider-primary').slider({
	      range: "min",
	      max: 100,
	      value: 43
	    });
	    
	    // Basic Slider: Success
	    jQuery('#slider-success').slider({
	      range: "min",
	      max: 100,
	      value: 60
	    });
	    
	    // Basic Slider: Warning
	    jQuery('#slider-warning').slider({
	      range: "min",
	      max: 100,
	      value: 37
	    });
	    
	    // Basic Slider: Danger
	    jQuery('#slider-danger').slider({
	      range: "min",
	      max: 100,
	      value: 45
	    });
	    
	    // Basic Slider: Info
	    jQuery('#slider-info').slider({
	      range: "min",
	      max: 100,
	      value: 55
	    });
	    
	    // Range Slider
	    jQuery('#slider-range').slider({
	      range: true,
	      max: 100,
	      values: [25,75]
	    });
	    
	    // Range Slider: Success
	    jQuery('#slider-range-success').slider({
	      range: true,
	      max: 100,
	      values: [35,65]
	    });
	    
	    // Range Slider: Danger
	    jQuery('#slider-range-danger').slider({
	      range: true,
	      max: 100,
	      values: [25,75]
	    });
	    
	    // Range Slider: Warning
	    jQuery('#slider-range-warning').slider({
	      range: true,
	      max: 100,
	      values: [40,60]
	    });
	    
	    // Range Slider: Info
	    jQuery('#slider-range-info').slider({
	      range: true,
	      max: 100,
	      values: [20,80]
	    });
	    
	    // Range Slider Maximum
	    jQuery('#slider-max').slider({
	      range: 'max',
	      max: 100,
	      value: 50
	    });
	    
	    // Range Slider Maximum
	    jQuery('#slider-min').slider({
	      range: 'min',
	      max: 100,
	      value: 50
	    });
	    
	    // Vertical Slider
	    jQuery('#vslider').slider({
	      orientation: 'vertical',
	      range: "min",
	      max: 100,
	      value: 50
	    });
	    
	    // Vertical Slider: Primary
	    jQuery('#vslider-primary').slider({
	      orientation: 'vertical',
	      range: "min",
	      max: 100,
	      value: 43
	    });
	    
	    // Vertical Slider: Success
	    jQuery('#vslider-success').slider({
	      orientation: 'vertical',
	      range: "min",
	      max: 100,
	      value: 60
	    });
	    
	    // Vertical Slider: Warning
	    jQuery('#vslider-warning').slider({
	      orientation: 'vertical',
	      range: "min",
	      max: 100,
	      value: 37
	    });
	    
	    // Vertical Slider: Danger
	    jQuery('#vslider-danger').slider({
	      orientation: 'vertical',
	      range: "min",
	      max: 100,
	      value: 45
	    });
	    
	    // Vertical Slider: Info
	    jQuery('#vslider-info').slider({
	      orientation: 'vertical',
	      range: "min",
	      max: 100,
	      value: 55
	    });
	    
	    // Range Vertical Slider
	    jQuery('#vslider-range').slider({
	      orientation: 'vertical',
	      range: true,
	      max: 100,
	      values: [25,75]
	    });
	    
	    // Range Vertical Slider: Success
	    jQuery('#vslider-range-success').slider({
	      orientation: 'vertical',
	      range: true,
	      max: 100,
	      values: [35,65]
	    });
	    
	    // Range Vertical Slider: Danger
	    jQuery('#vslider-range-danger').slider({
	      orientation: 'vertical',
	      range: true,
	      max: 100,
	      values: [25,75]
	    });
	    
	    // Range Vertical Slider: Warning
	    jQuery('#vslider-range-warning').slider({
	      orientation: 'vertical',
	      range: true,
	      max: 100,
	      values: [40,60]
	    });
	    
	    // Range Vertical Slider: Info
	    jQuery('#vslider-range-info').slider({
	      orientation: 'vertical',
	      range: true,
	      max: 100,
	      values: [20,80]
	    });
	    
	    
	  });
	</script>

</body>
</html>
