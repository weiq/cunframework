﻿<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Buttons</title>
</head>
<body>
    <div class="pageheader">
      <h2><i class="fa fa-hand-o-up"></i> Buttons <span>Subtitle goes here...</span></h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="index.html">Bracket</a></li>
          <li><a href="buttons.html">UI Elements</a></li>
          <li class="active">Buttons</li>
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
          <h4 class="panel-title">Basic Styles</h4>
        </div>
        <div class="panel-body">
          <div class="row">
            <div class="col-md-4">
              <h5 class="subtitle">Built-in Buttons</h5>
              <p>Use any of the available button classes to quickly create a styled button.</p>
              <br />
              <div class="btn-demo">
                <a class="btn btn-default">.btn-default</a>
                <a class="btn btn-primary">.btn-primary</a>
                <a class="btn btn-success">.btn-success</a>
                <a class="btn btn-warning">.btn-warning</a>
                <a class="btn btn-danger">.btn-danger</a>
                <a class="btn btn-info">.btn-info</a>
                <a class="btn btn-white">.btn-white</a>
              </div>
            </div>
            
            <div class="col-md-4">
              <h5 class="subtitle">Custom Buttons</h5>
              <p>Use any of the available custom button classes to add a custom styled button to your pages.</p>
              <br />
              <div class="btn-demo">
                <a class="btn btn-brown">.btn-brown</a>
                <a class="btn btn-black">.btn-black</a>
                <a class="btn btn-pink">.btn-pink</a>
                <a class="btn btn-darkblue">.btn-darkblue</a>
                <a class="btn btn-orange">.btn-orange</a>
                <a class="btn btn-maroon">.btn-maroon</a>
                <a class="btn btn-lightblue">.btn-lightblue</a>
              </div>
            </div>
            
            <div class="col-md-4">
              <h5 class="subtitle">Alternative Styles</h5>
              <p>This is an alternative styled buttons. You can use this by adding <code>-alt</code> to any of the button classes like <code>.btn-primary-alt</code></p>
              <br />
              <div class="btn-demo">
                <a class="btn btn-default-alt">Default</a>
                <a class="btn btn-primary-alt">Primary</a>
                <a class="btn btn-success-alt">Success</a>
                <a class="btn btn-warning-alt">Warning</a>
                <a class="btn btn-danger-alt">.Danger</a>
                <a class="btn btn-info-alt">Info</a>
              </div>
            </div>
            
          </div>
        </div><!-- panel-body -->
      </div><!-- panel -->
      
      <div class="row">
        <div class="col-md-6">
          <div class="panel panel-default">
            <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div>
              <h4 class="panel-title">Button Sizes</h4>
            </div>
            <div class="panel-body">
              <p>Fancy larger or smaller buttons? Add <code>.btn-lg</code>, <code>.btn-sm</code>, or <code>.btn-xs</code> for additional sizes.</p>
              <br />
              <p>
                <button class="btn btn-default btn-lg">Large Button</button>&nbsp;
                <button class="btn btn-primary btn-lg">Large Button</button>
              </p>
              <p>
                <button class="btn btn-default">Default Button</button>&nbsp;
                <button class="btn btn-primary">Default Button</button>
              </p>
              <p>
                <button class="btn btn-default btn-sm">Small Button</button>&nbsp;
                <button class="btn btn-primary btn-sm">Small Button</button>
              </p>
              <p>
                <button class="btn btn-default btn-xs">Extra Small Button</button>&nbsp;
                <button class="btn btn-primary btn-xs">Extra Small Button</button>
              </p>
              
            </div><!-- panel-body -->
          </div><!-- panel -->
        </div><!-- col-md-4 -->
        
        <div class="col-md-6">
          <div class="panel panel-default">
            <div class="panel-heading">
              <div class="panel-btns">
                <a href="" class="panel-close">&times;</a>
                <a href="" class="minimize">&minus;</a>
              </div>
              <h4 class="panel-title">Button Blocks</h4>
            </div>
            <div class="panel-body">
              <p>Create block level buttons - those that span the full width of a parent - by adding <code>.btn-block</code>.</p>
              <br />
              <p><button class="btn btn-default btn-lg btn-block">Block Level Button</button></p>
              <p><button class="btn btn-primary btn-block">Block Level Button</button></p>
              <p><button class="btn btn-white btn-sm btn-block">Block Level Button</button></p>
            </div><!-- panel-body -->
          </div><!-- panel -->
        </div><!-- col-md-4 -->
      </div><!-- row -->
      
      <div class="panel panel-default">
        <div class="panel-heading">
          <div class="panel-btns">
            <a href="" class="panel-close">&times;</a>
            <a href="" class="minimize">&minus;</a>
          </div>
          <h4 class="panel-title">Button Groups</h4>
          <p>Group a series of buttons together on a single line with the button group. </p>
        </div>
        <div class="panel-body">
          <div class="row">
            <div class="col-md-4">
              <p>Wrap a series of buttons with <code>.btn</code> in <code>.btn-group</code>.</p>
              <div class="btn-group">
                <button type="button" class="btn btn-default">Left</button>
                <button type="button" class="btn btn-default">Middle</button>
                <button type="button" class="btn btn-default">Right</button>
              </div>
              <div class="btn-group">
                <button type="button" class="btn btn-primary">Left</button>
                <button type="button" class="btn btn-primary">Middle</button>
                <button type="button" class="btn btn-primary">Right</button>
              </div>
            </div><!-- col-md-4 -->
            
            <div class="col-md-4">
              <p>Combine sets of <code>btn-group</code> into a <code>btn-toolbar</code> for more complex components.</p>
              <div class="btn-toolbar">
                <div class="btn-group">
                  <button type="button" class="btn btn-default">1</button>
                  <button type="button" class="btn btn-default">2</button>
                  <button type="button" class="btn btn-default">3</button>
                </div>
                <div class="btn-group">
                  <button type="button" class="btn btn-primary">Next</button>
                  <button type="button" class="btn btn-primary">Last</button>
                </div>
              </div><!-- btn-toolbar -->
            </div><!-- col-md-4 -->
            
            <div class="col-md-4">
              <p>Place a <code>.btn-group</code> within another <code>.btn-group</code> when you want dropdown menus mixed with a series of buttons.</p>
              <div class="btn-group">
                <button type="button" class="btn btn-default">1</button>
                <button type="button" class="btn btn-default">2</button>
              
                <div class="btn-group">
                  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    Dropdown
                    <span class="caret"></span>
                  </button>
                  <ul class="dropdown-menu">
                    <li><a href="#">Dropdown link</a></li>
                    <li><a href="#">Dropdown link</a></li>
                  </ul>
                </div>
              </div><!-- btn-group -->
            </div><!-- col-md-4 -->
            
          </div>
        </div><!-- panel-body -->
      </div><!-- panel -->
      
      <div class="panel panel-default">
        <div class="panel-heading">
          <div class="panel-btns">
            <a href="" class="panel-close">&times;</a>
            <a href="" class="minimize">&minus;</a>
          </div>
          <h4 class="panel-title">Button Dropdowns</h4>
          <p>Use any button to trigger a dropdown menu by placing it within a .btn-group and providing the proper menu markup.</p>
        </div><!-- panel-heading -->
        <div class="panel-body">
          <div class="row">
            <div class="col-md-4">
              <h5 class="subtitle">Single Button Dropdowns</h5>
              <p>Turn a button into a dropdown toggle with some basic markup changes.</p>
              <br />
              <div class="btn-group mr5">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                  Action <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li class="divider"></li>
                  <li><a href="#">Separated link</a></li>
                </ul>
              </div><!-- btn-group -->
              
              <div class="btn-group mr5">
                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                  Action <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li class="divider"></li>
                  <li><a href="#">Separated link</a></li>
                </ul>
              </div><!-- btn-group -->
              
              <div class="btn-group mr5">
                <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown">
                  Action <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li class="divider"></li>
                  <li><a href="#">Separated link</a></li>
                </ul>
              </div><!-- btn-group -->
              
              <div class="btn-group mr5">
                <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown">
                  Action <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li class="divider"></li>
                  <li><a href="#">Separated link</a></li>
                </ul>
              </div><!-- btn-group -->
              
              <div class="btn-group mr5">
                <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown">
                  Action <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li class="divider"></li>
                  <li><a href="#">Separated link</a></li>
                </ul>
              </div><!-- btn-group -->
              
              <div class="btn-group">
                <button type="button" class="btn btn-white dropdown-toggle" data-toggle="dropdown">
                  Action <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li class="divider"></li>
                  <li><a href="#">Separated link</a></li>
                </ul>
              </div><!-- btn-group -->
              
            </div><!-- col-md-4 -->
            <div class="col-md-4">
              <h5 class="subtitle">Split Button Dropdowns</h5>
              <p>Similarly, create split button dropdowns with the same markup changes, only with a separate button.</p>
              <br />
              <div class="btn-group mr5">
                <button type="button" class="btn btn-default">Action</button>
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                  <span class="caret"></span>
                  <span class="sr-only">Toggle Dropdown</span>
                </button>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li class="divider"></li>
                  <li><a href="#">Separated link</a></li>
                </ul>
              </div><!-- btn-group -->
              
              <div class="btn-group mr5">
                <button type="button" class="btn btn-primary">Action</button>
                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                  <span class="caret"></span>
                  <span class="sr-only">Toggle Dropdown</span>
                </button>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li class="divider"></li>
                  <li><a href="#">Separated link</a></li>
                </ul>
              </div><!-- btn-group -->
              
              <div class="btn-group mr5">
                <button type="button" class="btn btn-success">Action</button>
                <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown">
                  <span class="caret"></span>
                  <span class="sr-only">Toggle Dropdown</span>
                </button>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li class="divider"></li>
                  <li><a href="#">Separated link</a></li>
                </ul>
              </div><!-- btn-group -->
              
              <div class="btn-group mr5">
                <button type="button" class="btn btn-warning">Action</button>
                <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown">
                  <span class="caret"></span>
                  <span class="sr-only">Toggle Dropdown</span>
                </button>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li class="divider"></li>
                  <li><a href="#">Separated link</a></li>
                </ul>
              </div><!-- btn-group -->
              
              <div class="btn-group mr5">
                <button type="button" class="btn btn-danger">Action</button>
                <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown">
                  <span class="caret"></span>
                  <span class="sr-only">Toggle Dropdown</span>
                </button>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li class="divider"></li>
                  <li><a href="#">Separated link</a></li>
                </ul>
              </div><!-- btn-group -->
              
              <div class="btn-group">
                <button type="button" class="btn btn-white">Action</button>
                <button type="button" class="btn btn-white dropdown-toggle" data-toggle="dropdown">
                  <span class="caret"></span>
                  <span class="sr-only">Toggle Dropdown</span>
                </button>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li class="divider"></li>
                  <li><a href="#">Separated link</a></li>
                </ul>
              </div><!-- btn-group -->
              
            </div><!-- col-md-4 -->
            <div class="col-md-4">
              <h5 class="subtitle">Dropdown Sizing</h5>
              <p>Button dropdowns work with buttons of all sizes.</p>
              <br />
              <div class="btn-group mr5">
                <button type="button" class="btn btn-lg btn-default">Action</button>
                <button type="button" class="btn btn-lg btn-default dropdown-toggle" data-toggle="dropdown">
                  <span class="caret"></span>
                  <span class="sr-only">Toggle Dropdown</span>
                </button>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li class="divider"></li>
                  <li><a href="#">Separated link</a></li>
                </ul>
              </div><!-- btn-group -->
              
              <div class="btn-group mr5">
                <button type="button" class="btn btn-white">Action</button>
                <button type="button" class="btn btn-white dropdown-toggle" data-toggle="dropdown">
                  <span class="caret"></span>
                  <span class="sr-only">Toggle Dropdown</span>
                </button>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li class="divider"></li>
                  <li><a href="#">Separated link</a></li>
                </ul>
              </div><!-- btn-group -->
              
              <div class="btn-group">
                <button type="button" class="btn btn-xs btn-primary">Action</button>
                <button type="button" class="btn btn-xs btn-primary dropdown-toggle" data-toggle="dropdown">
                  <span class="caret"></span>
                  <span class="sr-only">Toggle Dropdown</span>
                </button>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li class="divider"></li>
                  <li><a href="#">Separated link</a></li>
                </ul>
              </div><!-- btn-group -->
              
            </div><!-- col-md-4 -->
          </div><!-- row -->
        </div><!-- panel-body -->
      </div><!-- panel -->
      
    </div><!-- contentpanel -->

	<script src="${ctx}/static/js/custom.js"></script>
</body>
</html>
