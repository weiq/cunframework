﻿<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Summary</title>
        <link href="${ctx}/static/css/morris.css" rel="stylesheet">
    </head>
    <body>
        <div class="pageheader">
            <h2><i class="fa fa-bug"></i> Bug Tracker</h2>
            <div class="breadcrumb-wrapper">
                <span class="label">You are here:</span>
                <ol class="breadcrumb">
                    <li><a href="index.html">Bracket</a></li>
                    <li><a href="bug-tracker.html">Bug Tracker</a></li>
                    <li class="active">Summary</li>
                </ol>
            </div>
        </div>

        <div class="contentpanel">
            
            <div class="row">
                <div class="col-md-6 mb30">
                    <h5 class="subtitle mb5">Issue Statistics</h5>
                    <p class="mb15">Below are some statistics indicating the resolved and unresolved issues in a year.</p>
                    <div id="bar-chart" style="width: 100%; height: 300px"></div>
                </div><!-- col-md-6 -->
                <div class="col-md-6 mb30">
                  <h5 class="subtitle mb5">Issues Per Project</h5>
                  <p class="mb15">Below are some statistics of number of issues per projects in a year.</p>
                  <div id="stacked-chart" style="width: 100%; height: 300px"></div>
                </div><!-- col-md-6 -->
            </div><!-- row -->
            
            <div class="row">
                <div class="col-md-6">
                    
                    <div class="panel panel-dark panel-alt">
                        <div class="panel-heading">
                            <div class="panel-btns">
                                <a href="" class="panel-close">&times;</a>
                                <a href="" class="minimize">&minus;</a>
                            </div><!-- panel-btns -->
                            <h5 class="panel-title">Unresolved By Priority</h5>
                        </div><!-- panel-heading -->
                        <div class="panel-body panel-table">
                            <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr class="table-head-alt">
                                        <th>Priority</th>
                                        <th>Issues</th>
                                        <th>Percentage</th>
                                        <th>&nbsp;</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><a href="">Critical</a></td>
                                        <td>1</td>
                                        <td>
                                            <div class="progress">
                                                <div style="width: 2%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="2" role="progressbar" class="progress-bar progress-bar-danger">
                                                  <span class="sr-only">2% Complete (success)</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td>2%</td>
                                    </tr>
                                    <tr>
                                        <td><a href="">Major</a></td>
                                        <td>3</td>
                                        <td>
                                            <div class="progress">
                                                <div style="width: 15%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="15" role="progressbar" class="progress-bar progress-bar-warning">
                                                  <span class="sr-only">15% Complete (success)</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td>15%</td>
                                    </tr>
                                    <tr>
                                        <td><a href="">Minor</a></td>
                                        <td>15</td>
                                        <td>
                                            <div class="progress">
                                                <div style="width: 52%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="52" role="progressbar" class="progress-bar progress-bar-primary">
                                                  <span class="sr-only">52% Complete (success)</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td>52%</td>
                                    </tr>
                                    <tr>
                                        <td><a href="">Trivial</a></td>
                                        <td>9</td>
                                        <td>
                                            <div class="progress">
                                                <div style="width: 20%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="20" role="progressbar" class="progress-bar progress-bar-success">
                                                  <span class="sr-only">20% Complete (success)</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td>20%</td>
                                    </tr>
                                    <tr>
                                        <td><a href="">Blocker</a></td>
                                        <td>2</td>
                                        <td>
                                            <div class="progress">
                                                <div style="width: 6%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="6" role="progressbar" class="progress-bar progress-bar-danger">
                                                  <span class="sr-only">6% Complete (success)</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td>6%</td>
                                    </tr>
                                </tbody>
                            </table>
                            </div><!-- table-responsive -->
                        </div><!-- panel-body -->
                    </div><!-- panel -->
                    
                </div><!-- col-md-6 -->
                
                <div class="col-md-6">
                    
                    <div class="panel panel-dark panel-alt">
                        <div class="panel-heading">
                            <div class="panel-btns">
                                <a href="" class="panel-close">&times;</a>
                                <a href="" class="minimize">&minus;</a>
                            </div><!-- panel-btns -->
                            <h5 class="panel-title">Status Summary</h5>
                        </div><!-- panel-heading -->
                        <div class="panel-body panel-table">
                            <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr class="table-head-alt">
                                        <th>Status</th>
                                        <th>Issues</th>
                                        <th>Percentage</th>
                                        <th>&nbsp;</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><a href="">Open</a></td>
                                        <td>98</td>
                                        <td>
                                            <div class="progress">
                                                <div style="width: 75%" aria-valuemax="100" aria-valuemin="75" aria-valuenow="2" role="progressbar" class="progress-bar progress-bar-primary">
                                                  <span class="sr-only">75% Complete (success)</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td>75%</td>
                                    </tr>
                                    <tr>
                                        <td><a href="">In Progress</a></td>
                                        <td>45</td>
                                        <td>
                                            <div class="progress">
                                                <div style="width: 52%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="52" role="progressbar" class="progress-bar progress-bar-primary">
                                                  <span class="sr-only">52% Complete (success)</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td>52%</td>
                                    </tr>
                                    <tr>
                                        <td><a href="">Reopened</a></td>
                                        <td>20</td>
                                        <td>
                                            <div class="progress">
                                                <div style="width: 12%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="12" role="progressbar" class="progress-bar progress-bar-primary">
                                                  <span class="sr-only">12% Complete (success)</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td>12%</td>
                                    </tr>
                                    <tr>
                                        <td><a href="">Resolved</a></td>
                                        <td>35</td>
                                        <td>
                                            <div class="progress">
                                                <div style="width: 25%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="25" role="progressbar" class="progress-bar progress-bar-primary">
                                                  <span class="sr-only">25% Complete (success)</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td>25%</td>
                                    </tr>
                                    <tr>
                                        <td><a href="">Closed</a></td>
                                        <td>66</td>
                                        <td>
                                            <div class="progress">
                                                <div style="width: 38%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="38" role="progressbar" class="progress-bar progress-bar-primary">
                                                  <span class="sr-only">38% Complete (success)</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td>38%</td>
                                    </tr>
                                </tbody>
                            </table>
                            </div><!-- table-responsive -->
                        </div><!-- panel-body -->
                    </div><!-- panel -->
                    
                </div><!-- col-md-6 -->
                
            </div><!-- row -->
            
            <div class="row">
                <div class="col-md-6">
                    
                    <div class="panel panel-dark panel-alt">
                        <div class="panel-heading">
                            <div class="panel-btns">
                                <a href="" class="panel-close">&times;</a>
                                <a href="" class="minimize">&minus;</a>
                            </div><!-- panel-btns -->
                            <h5 class="panel-title">Issues In Progress</h5>
                        </div><!-- panel-heading -->
                        <div class="panel-body panel-table">
                            <div class="table-responsive">
                            <table class="table table-buglist">
                                <thead>
                                    <tr>
                                        <th>Type</th>
                                        <th>Key</th>
                                        <th>Title</th>
                                        <th>Priority</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><i class="fa fa-bug tooltips" data-toggle="tooltip" title="Bug"></i></td>
                                        <td><a href="view-issue.html">PROJ-001</a></td>
                                        <td><a href="view-issue.html">Modal Issue</a></td>
                                        <td>Critical</td>
                                        <td>
                                            <div class="btn-group">
                                                <a data-toggle="dropdown" class="dropdown-toggle">
                                                  <i class="fa fa-cog"></i>
                                                </a>
                                                <ul role="menu" class="dropdown-menu pull-right">
                                                  <li><a href="#">View Issue</a></li>
                                                  <li><a href="#">Close Issue</a></li>
                                                  <li><a href="#">Resolve Issue</a></li>
                                                  <li class="divider"></li>
                                                  <li><a href="#">Edit</a></li>
                                                  <li><a href="#">Assign</a></li>
                                                  <li><a href="#">Comment</a></li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa fa-magic tooltips" data-toggle="tooltip" title="Improvements"></i></td>
                                        <td><a href="view-issue.html">PROJ-002</a></td>
                                        <td><a href="view-issue.html">Div Not Valid Elements</a></td>
                                        <td>Minor</td>
                                        <td>
                                            <div class="btn-group">
                                                <a data-toggle="dropdown" class="dropdown-toggle">
                                                  <i class="fa fa-cog"></i>
                                                </a>
                                                <ul role="menu" class="dropdown-menu pull-right">
                                                  <li><a href="#">View Issue</a></li>
                                                  <li><a href="#">Close Issue</a></li>
                                                  <li><a href="#">Resolve Issue</a></li>
                                                  <li class="divider"></li>
                                                  <li><a href="#">Edit</a></li>
                                                  <li><a href="#">Assign</a></li>
                                                  <li><a href="#">Comment</a></li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa fa-bug tooltips" data-toggle="tooltip" title="Bug"></i></td>
                                        <td><a href="view-issue.html">PROJ-017</a></td>
                                        <td><a href="view-issue.html">JS Not Working in Chrome</a></td>
                                        <td>Critical</td>
                                        <td>
                                            <div class="btn-group">
                                                <a data-toggle="dropdown" class="dropdown-toggle">
                                                  <i class="fa fa-cog"></i>
                                                </a>
                                                <ul role="menu" class="dropdown-menu pull-right">
                                                  <li><a href="#">View Issue</a></li>
                                                  <li><a href="#">Close Issue</a></li>
                                                  <li><a href="#">Resolve Issue</a></li>
                                                  <li class="divider"></li>
                                                  <li><a href="#">Edit</a></li>
                                                  <li><a href="#">Assign</a></li>
                                                  <li><a href="#">Comment</a></li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa fa-bug tooltips" data-toggle="tooltip" title="Bug"></i></td>
                                        <td><a href="view-issue.html">PROJ-007</a></td>
                                        <td><a href="view-issue.html">Responsive not working in 1024x768</a></td>
                                        <td>Minor</td>
                                        <td>
                                            <div class="btn-group">
                                                <a data-toggle="dropdown" class="dropdown-toggle">
                                                  <i class="fa fa-cog"></i>
                                                </a>
                                                <ul role="menu" class="dropdown-menu pull-right">
                                                  <li><a href="#">View Issue</a></li>
                                                  <li><a href="#">Close Issue</a></li>
                                                  <li><a href="#">Resolve Issue</a></li>
                                                  <li class="divider"></li>
                                                  <li><a href="#">Edit</a></li>
                                                  <li><a href="#">Assign</a></li>
                                                  <li><a href="#">Comment</a></li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            </div><!-- table-responsive -->
                        </div><!-- panel-body -->
                    </div><!-- panel -->
                    
                </div><!-- col-md-6 -->
                
                <div class="col-md-6">
                    
                    <div class="panel panel-dark panel-alt">
                        <div class="panel-heading">
                            <div class="panel-btns">
                                <a href="" class="panel-close">&times;</a>
                                <a href="" class="minimize">&minus;</a>
                            </div><!-- panel-btns -->
                            <h5 class="panel-title">Assigned To Me</h5>
                        </div><!-- panel-heading -->
                        <div class="panel-body panel-table">
                            <div class="table-responsive">
                            <table class="table table-buglist">
                                <thead>
                                    <tr>
                                        <th>Type</th>
                                        <th>Key</th>
                                        <th>Title</th>
                                        <th>Priority</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><i class="fa fa-bug tooltips" data-toggle="tooltip" title="Bug"></i></td>
                                        <td><a href="view-issue.html">PROJ-001</a></td>
                                        <td><a href="view-issue.html">Modal Issue</a></td>
                                        <td>Critical</td>
                                        <td>
                                            <div class="btn-group">
                                                <a data-toggle="dropdown" class="dropdown-toggle">
                                                  <i class="fa fa-cog"></i>
                                                </a>
                                                <ul role="menu" class="dropdown-menu pull-right">
                                                  <li><a href="#">View Issue</a></li>
                                                  <li><a href="#">Close Issue</a></li>
                                                  <li><a href="#">Resolve Issue</a></li>
                                                  <li class="divider"></li>
                                                  <li><a href="#">Edit</a></li>
                                                  <li><a href="#">Assign</a></li>
                                                  <li><a href="#">Comment</a></li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa fa-magic tooltips" data-toggle="tooltip" title="Improvements"></i></td>
                                        <td><a href="view-issue.html">PROJ-002</a></td>
                                        <td><a href="view-issue.html">Div Not Valid Elements</a></td>
                                        <td>Minor</td>
                                        <td>
                                            <div class="btn-group">
                                                <a data-toggle="dropdown" class="dropdown-toggle">
                                                  <i class="fa fa-cog"></i>
                                                </a>
                                                <ul role="menu" class="dropdown-menu pull-right">
                                                  <li><a href="#">View Issue</a></li>
                                                  <li><a href="#">Close Issue</a></li>
                                                  <li><a href="#">Resolve Issue</a></li>
                                                  <li class="divider"></li>
                                                  <li><a href="#">Edit</a></li>
                                                  <li><a href="#">Assign</a></li>
                                                  <li><a href="#">Comment</a></li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa fa-bug tooltips" data-toggle="tooltip" title="Bug"></i></td>
                                        <td><a href="view-issue.html">PROJ-017</a></td>
                                        <td><a href="view-issue.html">JS Not Working in Chrome</a></td>
                                        <td>Critical</td>
                                        <td>
                                            <div class="btn-group">
                                                <a data-toggle="dropdown" class="dropdown-toggle">
                                                  <i class="fa fa-cog"></i>
                                                </a>
                                                <ul role="menu" class="dropdown-menu pull-right">
                                                  <li><a href="#">View Issue</a></li>
                                                  <li><a href="#">Close Issue</a></li>
                                                  <li><a href="#">Resolve Issue</a></li>
                                                  <li class="divider"></li>
                                                  <li><a href="#">Edit</a></li>
                                                  <li><a href="#">Assign</a></li>
                                                  <li><a href="#">Comment</a></li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa fa-bug tooltips" data-toggle="tooltip" title="Bug"></i></td>
                                        <td><a href="view-issue.html">PROJ-007</a></td>
                                        <td><a href="view-issue.html">Responsive not working in 1024x768</a></td>
                                        <td>Minor</td>
                                        <td>
                                            <div class="btn-group">
                                                <a data-toggle="dropdown" class="dropdown-toggle">
                                                  <i class="fa fa-cog"></i>
                                                </a>
                                                <ul role="menu" class="dropdown-menu pull-right">
                                                  <li><a href="#">View Issue</a></li>
                                                  <li><a href="#">Close Issue</a></li>
                                                  <li><a href="#">Resolve Issue</a></li>
                                                  <li class="divider"></li>
                                                  <li><a href="#">Edit</a></li>
                                                  <li><a href="#">Assign</a></li>
                                                  <li><a href="#">Comment</a></li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            </div><!-- table-responsive -->
                        </div><!-- panel-body -->
                    </div><!-- panel -->
                    
                </div><!-- col-md-6 -->
                
            </div><!-- row -->
            
            <div class="panel panel-dark panel-alt">
                <div class="panel-heading">
                    <div class="panel-btns">
                        <a href="" class="panel-close">&times;</a>
                        <a href="" class="minimize">&minus;</a>
                    </div><!-- panel-btns -->
                    <h5 class="panel-title">Browse Projects</h5>
                </div>
                <div class="panel-body panel-table">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Project</th>
                                    <th>Key</th>
                                    <th>Lead</th>
                                    <th>URL</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><a href="">ThemeForest</a></td>
                                    <td>TF</td>
                                    <td><a href="">John Doe</a></td>
                                    <td><a href="">http://themeforest.net</a></td>
                                </tr>
                                <tr>
                                    <td><a href="">CodeCanyon</a></td>
                                    <td>CC</td>
                                    <td><a href="">Ironman</a></td>
                                    <td><a href="">http://codecanyon.net</a></td>
                                </tr>
                                <tr>
                                    <td><a href="">GraphicRiver</a></td>
                                    <td>GR</td>
                                    <td><a href="">Batman</a></td>
                                    <td><a href="">http://graphicriver.net</a></td>
                                </tr>
                                <tr>
                                    <td><a href="">PhotoDune</a></td>
                                    <td>PD</td>
                                    <td><a href="">Robocop</a></td>
                                    <td><a href="">http://graphicriver.net</a></td>
                                </tr>
                                <tr>
                                    <td><a href="">AudioJungle</a></td>
                                    <td>AJ</td>
                                    <td><a href="">Black Widow</a></td>
                                    <td><a href="">http://audiojungle.net</a></td>
                                </tr>
                            </tbody>
                        </table>
                    </div><!-- table-responsive -->
                </div><!-- panel-body -->
            </div><!-- panel -->
            
        </div><!-- contentpanel -->

        <script src="${ctx}/static/js/morris.min.js"></script>
        <script src="${ctx}/static/js/raphael-2.1.0.min.js"></script>
        <script src="${ctx}/static/js/chosen.jquery.min.js"></script>

        <script src="${ctx}/static/js/custom.js"></script>
        <script>
            jQuery(document).ready(function(){
                
                "use strict";
                
                // Chosen Select
                jQuery(".chosen-select").chosen({
                    'width':'100%',
                    'white-space':'nowrap',
                    disable_search: true
                });
                
                new Morris.Bar({
                    // ID of the element in which to draw the chart.
                    element: 'bar-chart',
                    // Chart data records -- each entry in this array corresponds to a point on
                    // the chart.
                    data: [
                        { y: '2006', a: 30, b: 20 },
                        { y: '2007', a: 75,  b: 65 },
                        { y: '2008', a: 50,  b: 40 },
                        { y: '2009', a: 75,  b: 65 },
                        { y: '2010', a: 50,  b: 40 },
                        { y: '2011', a: 75,  b: 65 },
                        { y: '2012', a: 100, b: 90 }
                    ],
                    xkey: 'y',
                    ykeys: ['a', 'b'],
                    labels: ['Solved', 'Unresolved'],
                    barColors: ['#D9534F', '#F0AD4E'],
                    lineWidth: '1px',
                    fillOpacity: 0.8,
                    smooth: false,
                    hideHover: true
                });
                
                new Morris.Bar({
                    // ID of the element in which to draw the chart.
                    element: 'stacked-chart',
                    // Chart data records -- each entry in this array corresponds to a point on
                    // the chart.
                    data: [
                        { y: '2006', a: 30, b: 20 },
                        { y: '2007', a: 75,  b: 65 },
                        { y: '2008', a: 50,  b: 40 },
                        { y: '2009', a: 75,  b: 65 },
                        { y: '2010', a: 50,  b: 40 },
                        { y: '2011', a: 75,  b: 65 },
                        { y: '2012', a: 100, b: 90 }
                    ],
                    xkey: 'y',
                    ykeys: ['a', 'b'],
                    labels: ['Series A', 'Series B'],
                    barColors: ['#1CAF9A', '#428BCA'],
                    lineWidth: '1px',
                    fillOpacity: 0.8,
                    smooth: false,
                    stacked: true,
                    hideHover: true
                });
                
            });
        </script>
    </body>
</html>
