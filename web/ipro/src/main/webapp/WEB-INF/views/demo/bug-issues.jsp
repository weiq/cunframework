﻿<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Issues</title>
        <link href="${ctx}/static/css/morris.css" rel="stylesheet">
    </head>
    <body>
        <div class="pageheader">
            <h2><i class="fa fa-bug"></i> Bug Issues</h2>
            <div class="breadcrumb-wrapper">
                <span class="label">You are here:</span>
                <ol class="breadcrumb">
                    <li><a href="index.html">Bracket</a></li>
                    <li><a href="bug-tracker.html">Bug Tracker</a></li>
                    <li class="active">Issues</li>
                </ol>
            </div>
        </div>

        <div class="contentpanel">
            
            <ul class="nav nav-tabs nav-dark">
                <li class="active"><a data-toggle="tab" href="#all"><strong>All Issues</strong></a></li>
                <li><a data-toggle="tab" href="#added"><strong>Added Recently</strong></a></li>
                <li><a data-toggle="tab" href="#assigned"><strong>Assigned To Me</strong></a></li>
                <li><a data-toggle="tab" href="#unresolved"><strong>Unresolved</strong></a></li>
                <li><a data-toggle="tab" href="#resolved"><strong>Resolved Recently</strong></a></li>
            </ul>
            <div class="tab-content">
                <div id="all" class="tab-pane active">
                    
                    <div class="alert alert-info fade in">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <h4>Instructions!</h4>
                        <p>Change this and that and try again. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum.</p>
                        <p>
                            <button type="button" class="btn btn-info">Take this action</button>
                            <button type="button" class="btn btn-white">Or do this</button>
                        </p>
                    </div>
                    
                    <div class="table-responsive">
                            <table class="table table-primary table-buglist">
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
                                        <td><a href="${ctx}/demo/view-issue.html">PROJ-001</a></td>
                                        <td><a href="${ctx}/demo/view-issue.html">Modal Issue</a></td>
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
                                        <td><a href="${ctx}/demo/view-issue.html">PROJ-002</a></td>
                                        <td><a href="${ctx}/demo/view-issue.html">Div Not Valid Elements</a></td>
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
                                        <td><a href="${ctx}/demo/view-issue.html">PROJ-017</a></td>
                                        <td><a href="${ctx}/demo/view-issue.html">JS Not Working in Chrome</a></td>
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
                                        <td><a href="${ctx}/demo/view-issue.html">PROJ-007</a></td>
                                        <td><a href="${ctx}/demo/view-issue.html">Responsive not working in 1024x768</a></td>
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
                                        <td><a href="${ctx}/demo/view-issue.html">PROJ-001</a></td>
                                        <td><a href="${ctx}/demo/view-issue.html">Modal Issue</a></td>
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
                                        <td><a href="${ctx}/demo/view-issue.html">PROJ-002</a></td>
                                        <td><a href="${ctx}/demo/view-issue.html">Div Not Valid Elements</a></td>
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
                                        <td><a href="${ctx}/demo/view-issue.html">PROJ-017</a></td>
                                        <td><a href="${ctx}/demo/view-issue.html">JS Not Working in Chrome</a></td>
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
                                        <td><a href="${ctx}/demo/view-issue.html">PROJ-007</a></td>
                                        <td><a href="${ctx}/demo/view-issue.html">Responsive not working in 1024x768</a></td>
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
                                        <td><a href="${ctx}/demo/view-issue.html">PROJ-001</a></td>
                                        <td><a href="${ctx}/demo/view-issue.html">Modal Issue</a></td>
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
                                        <td><a href="${ctx}/demo/view-issue.html">PROJ-002</a></td>
                                        <td><a href="${ctx}/demo/view-issue.html">Div Not Valid Elements</a></td>
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
                                        <td><a href="${ctx}/demo/view-issue.html">PROJ-017</a></td>
                                        <td><a href="${ctx}/demo/view-issue.html">JS Not Working in Chrome</a></td>
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
                                        <td><a href="${ctx}/demo/view-issue.html">PROJ-007</a></td>
                                        <td><a href="${ctx}/demo/view-issue.html">Responsive not working in 1024x768</a></td>
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
                            
                            <ul class="pagination pagination-split nomargin">
                                <li class="disabled"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                                <li><a href="#">1</a></li>
                                <li class="active"><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                            </ul>
                            
                            
                </div><!-- tab-pane -->
                
                <div id="added" class="tab-pane">
                    <p><strong>Note:</strong> Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitatio.</p>
                </div><!-- tab-pane -->
                
                <div id="assigned" class="tab-pane">
                    Assigned To Me
                </div><!-- tab-pane -->
                
                <div id="unresolved" class="tab-pane">
                    Unresolved
                </div><!-- tab-pane -->
                
                <div id="resolved" class="tab-pane">
                    Resolved Recently
                </div><!-- tab-pane -->
                
            </div><!-- tab-content -->
            
        </div><!-- contentpanel -->

        <script src="${ctx}/static/js/morris.min.js"></script>
        <script src="${ctx}/static/js/raphael-2.1.0.min.js"></script>
        <script src="${ctx}/static/js/chosen.jquery.min.js"></script>

        <script src="${ctx}/static/js/custom.js"></script>
    </body>
</html>
