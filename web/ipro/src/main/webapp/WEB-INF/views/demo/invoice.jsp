<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Invoice</title>
</head>
<body>
    <div class="pageheader">
      <h2><i class="fa fa-dollar"></i> Invoice <span>Subtitle goes here...</span></h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="index.html">Bracket</a></li>
          <li><a href="index.html">Pages</a></li>
          <li class="active">Invoice</li>
        </ol>
      </div>
    </div>
    
    <div class="contentpanel">
      
      <div class="panel panel-default">
        <div class="panel-body">
            <div class="row">
                <div class="col-sm-6">
                    
                    <h5 class="subtitle mb10">From</h5>
                    <img src="${ctx}/static/images/themeforest.png" class="img-responsive mb10" alt="" />
                    <address>
                        <strong>ThemeForest Web Services, Inc.</strong><br>
                        795 Folsom Ave, Suite 600<br>
                        San Francisco, CA 94107<br>
                        <abbr title="Phone">P:</abbr> (123) 456-7890
                    </address>
                    
                </div><!-- col-sm-6 -->
                
                <div class="col-sm-6 text-right">
                    <h5 class="subtitle mb10">Invoice No.</h5>
                    <h4 class="text-primary">INV-000464F4-00</h4>
                    
                    <h5 class="subtitle mb10">To</h5>
                    <address>
                        <strong>ThemePixels, Inc.</strong><br>
                        795 Folsom Ave, Suite 600<br>
                        San Francisco, CA 94107<br>
                        <abbr title="Phone">P:</abbr> (123) 456-7890
                    </address>
                    
                    <p><strong>Invoice Date:</strong> January 20, 2014</p>
                    <p><strong>Due Date:</strong> January 22, 2014</p>
                    
                </div>
            </div><!-- row -->
            
            <div class="table-responsive">
            <table class="table table-invoice">
            <thead>
              <tr>
                <th>Item</th>
                <th>Quantity</th>
                <th>Unit Price</th>
                <th>Total Price</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>
                    <div class="text-primary"><strong>Wordpress Template Customization</strong></div>
                    <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</small>
                </td>
                <td>1</td>
                <td>$99.00</td>
                <td>$99.00</td>
              </tr>
              <tr>
                <td>
                    <div class="text-primary"><strong>PSD to HTML5 Conversion</strong></div>
                    <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</small>
                </td>
                <td>3</td>
                <td>$150.00</td>
                <td>$450.00</td>
              </tr>
              <tr>
                <td>
                    <div class="text-primary"><strong>Email Template</strong></div>
                    <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</small>
                </td>
                <td>2</td>
                <td>$35.00</td>
                <td>$70.00</td>
              </tr>
              <tr>
                <td>
                    <div class="text-primary"><strong>Wordpress Theme Development</strong></div>
                    <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</small>
                </td>
                <td>1</td>
                <td>$230.00</td>
                <td>$230.00</td>
              </tr>
            </tbody>
          </table>
          </div><!-- table-responsive -->
          
            <table class="table table-total">
                <tbody>
                    <tr>
                        <td><strong>Sub Total :</strong></td>
                        <td>$849.00</td>
                    </tr>
                    <tr>
                        <td><strong>VAT :</strong></td>
                        <td>$67.23</td>
                    </tr>
                    <tr>
                        <td><strong>TOTAL :</strong></td>
                        <td>$916.23</td>
                    </tr>
                </tbody>
            </table>
            
            <div class="text-right btn-invoice">
                <button class="btn btn-primary mr5"><i class="fa fa-dollar mr5"></i> Make A Payment</button>
                <button class="btn btn-white"><i class="fa fa-print mr5"></i> Print Invoice</button>
            </div>
            
            <div class="mb40"></div>
            
            <div class="well">
                Thank you for your business. Please make sure all cheques payable to <strong>ThemeForest Web Services, Inc.</strong> Account No. 54353535
            </div>
            
            
        </div><!-- panel-body -->
      </div><!-- panel -->
      
    </div>

	<script src="${ctx}/static/js/custom.js"></script>

</body>
</html>
