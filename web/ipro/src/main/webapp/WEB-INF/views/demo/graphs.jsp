﻿<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Graphs Charts</title>
  <link href="${ctx}/static/css/morris.css" rel="stylesheet">
</head>

<body>
    <div class="pageheader">
      <h2><i class="fa fa-align-right fa-rotate-90"></i> Graphs &amp; Charts <span>Subtitle goes here...</span></h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="index.html">Bracket</a></li>
          <li><a href="buttons.html">UI Elements</a></li>
          <li class="active">Graphs &amp; Charts</li>
        </ol>
      </div>
    </div>
    
    <div class="contentpanel">
      
      <div class="panel panel-default">
        <div class="panel-heading">
          <div class="panel-btns">
            <a href="" class="panel-close">&times;</a>
            <a href="" class="minimize">&minus;</a>
          </div><!-- panel-btns -->
          <h4 class="panel-title">Flot Charts </h4>
          <p><a href="http://www.flotcharts.org/" target="_blank">Flot</a> is a pure JavaScript plotting library for jQuery, with a focus on simple usage, attractive looks and interactive features.</p>
        </div><!-- panel-heading -->
        <div class="panel-body">
              
            <div class="row">
              <div class="col-md-6 mb30">
                <h5 class="subtitle mb5">Simple Chart</h5>
                <p class="mb15">Create a placeholder, make sure it has dimensions (so Flot knows at what size to draw the plot), then call the plot function with your data.</p>
                <div id="basicflot" style="width: 100%; height: 300px"></div>
              </div><!-- col-md-6 -->
              <div class="col-md-6 mb30">
                <h5 class="subtitle mb5">Using Other Symbols</h5>
                <p class="mb15">For other point types, you can define a callback function to draw the symbol. Some common symbols are available in the symbol plugin.</p>
                <div id="basicflot2" style="width: 100%; height: 300px"></div>
              </div><!-- col-md-6 -->
            </div><!-- row -->
            
            <div class="row">
              <div class="col-md-6 mb30">
                <h5 class="subtitle mb5">Tracking With Crosshair</h5>
                <p class="mb15">You can add crosshairs that'll track the mouse position, either on both axes or as here on only one. </p>
                <div id="trackingchart" style="width: 100%; height: 300px"></div>
              </div><!-- col-md-6 -->
              <div class="col-md-6 mb30">
                <h5 class="subtitle mb5">Real Time Updates</h5>
                <p class="mb15">You can update a chart periodically to get a real-time effect by using a timer to insert the new data in the plot and redraw it.</p>
                <div id="realtimechart" style="width: 100%; height: 300px"></div>
              </div><!-- col-md-6 -->
            </div><!-- row -->
            
            <div class="row">
              <div class="col-md-6 mb30">
                <h5 class="subtitle mb5">Bar Chart</h5>
                <p class="mb15">With the categories plugin you can plot categories/textual data easily.</p>
                <div id="barchart" style="width: 100%; height: 300px"></div>
              </div><!-- col-md-6 -->
              <div class="col-md-6 mb30">
                <h5 class="subtitle mb5">Pie Chart</h5>
                <p class="mb15">Labels can be hidden if the slice is less than a given percentage of the pie.</p>
                <div id="piechart" style="width: 100%; height: 300px"></div>
              </div><!-- col-md-6 -->
            </div><!-- row -->
              
        </div><!-- panel-body -->
      </div><!-- panel -->
      
      <div class="panel panel-default panel-morris">
        <div class="panel-heading">
          <div class="panel-btns">
            <a href="" class="panel-close">&times;</a>
            <a href="" class="minimize">&minus;</a>
          </div><!-- panel-btns -->
          <h4 class="panel-title">Morris Charts </h4>
          <p><a href="http://www.oesmith.co.uk/morris.js/index.html" target="_blank">Morris</a> chart - good-looking charts shouldn't be difficult.</p>
        </div><!-- panel-heading -->
        <div class="panel-body">
          <div class="row">
            <div class="col-md-6 mb30">
              <h5 class="subtitle">Line Chart</h5>
              <p>A line graph is a type of chart which displays information as a series of data points connected by straight line segments.</p>
              <div id="line-chart" class="body-chart"></div>
            </div>
            
            <div class="col-md-6 mb30">
              <h5 class="subtitle">Area Chart</h5>
              <p>Area charts are used to represent cumulated totals using numbers or percentages (stacked area charts in this case) over time.</p>
              <div id="area-chart" class="body-chart"></div>
            </div>
            
          </div><!-- row -->
          
          <div class="row">
            <div class="col-md-6 mb30">
              <h5 class="subtitle">Bar Chart</h5>
              <p>A bar chart or bar graph is a chart with rectangular bars with lengths proportional to the values that they represent.</p>
              <div id="bar-chart" class="body-chart"></div>
            </div>
            
            <div class="col-md-6 mb30">
              <h5 class="subtitle">Stacked Chart</h5>
              <p>The stacked charts are used when data sets have to be broken down into their constituents.</p>
              <div id="stacked-chart" class="body-chart"></div>
            </div>
          </div><!-- row -->
          
          <div class="row">
            <div class="col-md-6">
              <h5 class="subtitle">Donut Chart</h5>
              <p>A donut chart, or doughnut chart, functions precisely like a pie chart. The only difference is that the center is blank.</p>
              <div id="donut-chart" class="body-chart"></div>
            </div>
            <div class="col-md-6">
              <h5 class="subtitle">Donut Chart</h5>
              <p>A donut chart, or doughnut chart, functions precisely like a pie chart. The only difference is that the center is blank.</p>
              <div id="donut-chart2" class="body-chart"></div>
            </div>
          </div><!-- row -->
          
        </div><!-- panel-body -->
      </div><!-- panel -->
      
      <div class="panel panel-default">
        <div class="panel-heading">
          <div class="panel-btns">
            <a href="" class="panel-close">&times;</a>
            <a href="" class="minimize">&minus;</a>
          </div><!-- panel-btns -->
          <h4 class="panel-title panel-title-alt">Sparkline Charts </h4>
          <p><a href="http://omnipotent.net/jquery.sparkline" target="_blank">jQuery Sparkline</a> generates sparklines (small inline charts) directly in the browser using data supplied either inline in the HTML, or via javascript. </p>
        </div><!-- panel-heading -->
        <div class="panel-body">
          
          <div class="tinystat mr20">
            <div id="sparkline" class="chart mt5"></div>
            <div class="datainfo">
              <span class="text-muted">Total Sales</span>
              <h4>$630,201</h4>
            </div>
          </div><!-- tinystat -->
              
          <div class="tinystat mr20">
            <div id="sparkline2" class="chart mt5"></div>
            <div class="datainfo">
              <span class="text-muted">Avg Sales</span>
              <h4>$106,850</h4>
            </div>
          </div><!-- tinystat -->
              
          <div class="tinystat mr20">
            <div id="sparkline3" class="chart mt5">1,5,3,6,8,2</div>
            <div class="datainfo">
              <span class="text-muted">Avg Order</span>
              <h4>23,001,090</h4>
            </div>
          </div><!-- tinystat -->
          
          <div class="tinystat">
            <div id="sparkline4" class="chart mt5">1,5,3,6,8,2</div>
            <div class="datainfo">
              <span class="text-muted">Avg Expenses</span>
              <h4>$11,090</h4>
            </div>
          </div><!-- tinystat -->
              
        </div><!-- panel-body -->
      </div><!-- panel -->
            
    </div><!-- contentpanel -->
    
	<script src="${ctx}/static/js/flot/jquery.flot.min.js"></script>
	<script src="${ctx}/static/js/flot/jquery.flot.resize.min.js"></script>
	<script src="${ctx}/static/js/flot/jquery.flot.symbol.min.js"></script>
	<script src="${ctx}/static/js/flot/jquery.flot.crosshair.min.js"></script>
	<script src="${ctx}/static/js/flot/jquery.flot.categories.min.js"></script>
	<script src="${ctx}/static/js/flot/jquery.flot.pie.min.js"></script>
	<script src="${ctx}/static/js/morris.min.js"></script>
	<script src="${ctx}/static/js/raphael-2.1.0.min.js"></script>
	
	<script src="${ctx}/static/js/custom.js"></script>
	<script src="${ctx}/static/js/charts.js"></script>

</body>
</html>
