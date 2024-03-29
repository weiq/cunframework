﻿<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>View Issue</title>
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
                    <li><a href="bug-issues.html">Issues</a></li>
                    <li class="active">View Issue</li>
                </ol>
            </div>
        </div>

        <div class="contentpanel">
            
            <div class="panel">
                <div class="panel-heading">
                    <h5 class="bug-key-title">PROJ-007</h5>
                    <div class="panel-title">Responsive not working in 1024x768</div>
                </div><!-- panel-heading-->
                <div class="panel-body">
                    <div class="btn-group mr10">
                        <button class="btn btn-primary" type="button"><i class="fa fa-pencil mr5"></i> Edit</button>
                        <button class="btn btn-primary" type="button"><i class="fa fa-comments mr5"></i> Comment</button>
                        <button class="btn btn-primary" type="button"><i class="fa fa-trash-o mr5"></i> Delete</button>
                    </div>
                    
                    <div class="btn-group mr10">
                        <button class="btn btn-default" type="button">Resolve Issue</button>
                        <button class="btn btn-default" type="button">Close Issue</button>
                    </div>
                    
                    <div class="btn-group mr10">
                        <button data-toggle="dropdown" class="btn btn-default dropdown-toggle" type="button">
                            More
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                            <li><a href="#">Assign</a></li>
                            <li><a href="#">Attach File</a></li>
                            <li><a href="#">Watch Issue</a></li>
                            <li><a href="#">Watchers</a></li>
                            <li><a href="#">Labels</a></li>
                        </ul>
                    </div>
                    
                    <div class="btn-group">
                        <button data-toggle="dropdown" class="btn btn-success dropdown-toggle" type="button">
                            <i class="fa fa-arrow-circle-o-down mr5"></i> Export
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                            <li><a href="#">Word</a></li>
                            <li><a href="#">Text</a></li>
                            <li><a href="#">Spreadsheet</a></li>
                            <li><a href="#">Print</a></li>
                        </ul>
                    </div>
                    
                    <br /><br />
                    
                    <div class="row">
                        <div class="col-sm-12">
                            <h5 class="subtitle subtitle-lined">Details</h5>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="row">
                                        <div class="col-xs-6">Type</div>
                                        <div class="col-xs-6">Bug</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-6">Priority</div>
                                        <div class="col-xs-6">Major</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-6">Components</div>
                                        <div class="col-xs-6">None</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-6">Label</div>
                                        <div class="col-xs-6"><a href="">label</a> <a href="">ui</a></div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-6">Browser Types</div>
                                        <div class="col-xs-6">Chrome, Safari</div>
                                    </div>
                                </div><!-- col-sm-6 -->
                                <div class="col-sm-6">
                                    <div class="row">
                                        <div class="col-xs-6">Status</div>
                                        <div class="col-xs-6">Open</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-6">Fix Versions</div>
                                        <div class="col-xs-6">4.1, 4.2</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-6">Assignee</div>
                                        <div class="col-xs-6"><a href="">John Doe</a></div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-6">Reporter</div>
                                        <div class="col-xs-6"><a href="">Weno Carasbong</a></div>
                                    </div>
                                </div><!-- col-sm-6 -->
                            </div><!-- row -->
                            
                            <br /><br />
                            
                            <h5 class="subtitle subtitle-lined">Description</h5>
                            <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p>
                            <p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>
                            
                            <br /><br />
                            
                            <ul class="nav nav-tabs">
                                <li><a data-toggle="tab" href="#all"><strong>All</strong></a></li>
                                <li class="active"><a data-toggle="tab" href="#comments"><strong>Comments</strong></a></li>
                                <li><a data-toggle="tab" href="#worklog"><strong>Work Log</strong></a></li>
                                <li><a data-toggle="tab" href="#history"><strong>History</strong></a></li>
                                <li><a data-toggle="tab" href="#activity"><strong>Activity</strong></a></li>
                            </ul>
                            <br />
                            <div class="tab-content noshadow">
                                <div id="all" class="tab-pane">
                                    All activity goes here...
                                </div>
                                <div id="comments" class="tab-pane active">
                                    <ul class="media-list comment-list">          
                                        <li class="media">
                                            <a href="#" class="pull-left">
                                                <img alt="" src="${ctx}/static/images/photos/user1.png" class="media-object">
                                            </a>
                                            <div class="media-body">
                                                <a class="btn btn-default btn-xs pull-right reply" href=""><i class="fa fa-reply"></i></a>
                                                <h4>Nusja Nawancali</h4>
                                                <small class="text-muted">January 10, 2014 at 7:30am</small>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                            
                                                <div class="media">
                                                    <a href="#" class="pull-left">
                                                        <img alt="" src="${ctx}/static/images/photos/userprofile.png" class="media-object">
                                                    </a>
                                                    <div class="media-body">
                                                        <a class="btn btn-default btn-xs pull-right reply" href=""><i class="fa fa-reply"></i></a>
                                                        <h4>Eileen Sideways</h4>
                                                        <small class="text-muted">January 10, 2014 at 7:30am</small>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                              
                                                        <div class="media">
                                                            <a href="#" class="pull-left">
                                                                <img alt="" src="${ctx}/static/images/photos/user3.png" class="media-object">
                                                            </a>
                                                            <div class="media-body">
                                                                <a class="btn btn-default btn-xs pull-right reply" href=""><i class="fa fa-reply"></i></a>
                                                                <h4>Zaham Sindilmaca</h4>
                                                                <small class="text-muted">January 10, 2014 at 7:30am</small>
                                                                <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                                            </div>
                                                        </div><!-- media -->
                                                    </div><!-- media-body -->
                                                </div><!-- media -->
                                            
                                                <div class="media">
                                                    <a href="#" class="pull-left">
                                                        <img alt="" src="${ctx}/static/images/photos/user2.png" class="media-object">
                                                    </a>
                                                    <div class="media-body">
                                                        <a class="btn btn-default btn-xs pull-right reply" href=""><i class="fa fa-reply"></i></a>
                                                        <h4>Ray Sin</h4>
                                                        <small class="text-muted">January 10, 2014 at 7:30am</small>
                                                        <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                                    </div>
                                                </div><!-- media -->
                                            
                                          </div><!-- media-body -->
                                          
                                        </li><!-- media -->
                                        
                                        <li class="media">
                                            <a href="#" class="pull-left">
                                                <img alt="" src="${ctx}/static/images/photos/user1.png" class="media-object">
                                            </a>
                                            <div class="media-body">
                                                <a class="btn btn-default btn-xs pull-right reply" href=""><i class="fa fa-reply"></i></a>
                                                <h4>Nusja Nawancali</h4>
                                                <small class="text-muted">January 10, 2014 at 7:30am</small>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                            </div>
                                        </li><!-- media -->
                            
                                    </ul>
                                    <br />
                                    <button class="btn btn-primary"><i class="fa fa-comments mr5"></i>Add Comment</button>
                                </div><!-- tab-pane -->
                                <div id="worklog" class="tab-pane">
                                    Work log goes here...
                                </div>
                                <div id="history" class="tab-pane">
                                    History goes here...
                                </div>
                                <div id="activity" class="tab-pane">
                                    Activity goes here...
                                </div>
                            </div><!-- tab-content -->
                            
                        </div>
                    </div><!-- row -->
                    
                </div><!-- panel-body -->
            </div><!-- panel -->
            
        </div><!-- contentpanel -->

        <script src="${ctx}/static/js/morris.min.js"></script>
        <script src="${ctx}/static/js/raphael-2.1.0.min.js"></script>
        <script src="${ctx}/static/js/chosen.jquery.min.js"></script>

        <script src="${ctx}/static/js/custom.js"></script>
    </body>
</html>
