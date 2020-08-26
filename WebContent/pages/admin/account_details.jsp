<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>YourBank | Account Details </title>
  <jsp:include page="/pages/header.jsp"/>
</head>


<body class="hold-transition sidebar-mini">

<jsp:include page="/pages/admin/admin_nav.jsp"/>
<!-- Content Wrapper. Contains page content -->
  <div style="padding: 50px; " class="content-wrapper">

    <div class="content">
 
            
          <div class="card">
              <div class="card-header border-transparent">
                <h3 class="card-title">Account Detail</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <div class="table-responsive">
                  <table class="table m-0">
                    <thead>
                    <tr>
                      <th>Details</th>
                      <th>Info</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td>Name</td>
                      <td>Vatandeep Kaur</td>  
                    </tr>
                    <tr>
                      <td>Account Type</td>
                      <td>Momentum Saving Plus</td>
                    </tr>
                     
                    
                    <tr>
                      <td>Accounts</td>
                      <td>1231231233</td>
                    </tr>
                    
                    <tr>
                      <td>Balance</td>
                      <td>$10,000</td>
                    </tr>
                  
                    </tbody>
                  </table>
                </div>
                <!-- /.table-responsive -->
              </div>
              <!-- /.card-body -->
             
            </div>
            <!-- /.card -->
            
          <div class="card">
	          <div class="card-header border-transparent">
	          	<h3 class="card-title">Admin Banking Option</h3>
	          </div>
	          <div class="card-body p-20">
	          	<button class="btn btn-info" data-toggle="modal" data-target="#modal-deposit">Deposit Funds</button>
	          	<button class="btn btn-danger" data-toggle="modal" data-target="#modal-withdraw">Withdraw Funds</button>
	          </div>
	          
          </div>  
            
          <div class="card">
              <div class="card-header border-transparent">
                <h3 class="card-title">Transactions</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <div class="table-responsive">
                  <table class="table m-0">
                    <thead>
                    <tr>
                      <th>Info</th>
                      <th>Balance</th>
                      <th>Transaction Type</th>
                    </tr> 
                    </thead>
                    <tbody>
                    
                    <tr>
                      <td>Intial Balance</td>
                      <td>$10,000</td>  
                      <td>Credit</td>
                    </tr>
                    
                  
                    </tbody>
                  </table>
                </div>
                <!-- /.table-responsive -->
              </div>
              <!-- /.card-body -->
             
            </div>
            <!-- /.card -->
    
    </div>
    </div>
    
    <!-- Balance Withdrawl Modal  -->
    <div class="modal fade" id="modal-withdraw">
        <div class="modal-dialog modal-xl">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Withdraw Balance</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
             <form class="form-horizontal">
             <div class="form-group row">
                    <label  class="col-sm-2 col-form-label">Amount to Withdraw</label>
                    <div class="col-sm-6">
                      <input type="number" class="form-control"  placeholder="Initial Deposit Balance">
                    </div>
                  </div>
             </form>
            </div>
            <div class="modal-footer justify-content-between">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <button type="button" class="btn btn-danger">Withdraw</button>
            </div>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->
      
      <!-- Balance Deposit Modal -->
      
      <div class="modal fade" id="modal-deposit">
        <div class="modal-dialog modal-xl">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Deposit Balance</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <div class="form-group row">
                    <label  class="col-sm-2 col-form-label">Amount to Deposit</label>
                    <div class="col-sm-6">
                      <input type="password" class="form-control"  placeholder="Initial Deposit Balance">
                    </div>
                  </div>
              
            </div>
            <div class="modal-footer justify-content-between">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <button type="button" class="btn btn-info">Deposit</button>
            </div>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->
      
      
    <jsp:include page="/pages/scripts.jsp"/>
</body>
</html>
    