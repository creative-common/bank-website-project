<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>YourBank | User Account Details </title>
  <jsp:include page="/pages/header.jsp"/>
</head>


<body class="hold-transition sidebar-mini">

<jsp:include page="/pages/user/user_nav.jsp"/>
  
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
                      <td>Sanjeet Pal Singh</td>  
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
                      <td>$5,000</td>
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
                      <td>$5,000</td>  
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
  <!-- /.content-wrapper -->
  
  <!-- E- Transfer Others Modal  -->
    <div class="modal fade" id="modal-etransfer-others">
        <div class="modal-dialog modal-xl">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">E-Transfer To Other User Accounts Form</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
             <form class="form-horizontal">
             <div class="form-group row">
                    <label  class="col-sm-2 col-form-label">Amount to Transfer</label>
                    <div class="col-sm-6">
                      <input type="number" class="form-control"  placeholder="Initial Deposit Balance">
                    </div>
                  </div>
                   <div class="form-group row">
                    <label  class="col-sm-2 col-form-label">Account Number</label>
                    <div class="col-sm-6">
                      <input type="number" class="form-control"  placeholder="Account Number">
                    </div>
                  </div>   
             </form>
            </div>
            <div class="modal-footer justify-content-between">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <button type="button" class="btn btn-danger">Transfer</button>
            </div>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->
      
   <!-- E- Transfer Within Modal  -->
    <div class="modal fade" id="modal-etransfer-within">
        <div class="modal-dialog modal-xl">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">E-Transfer Within Own Accounts Form</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
             <form class="form-horizontal">
             <div class="form-group row">
                    <label  class="col-sm-2 col-form-label">Amount to Transfer</label>
                    <div class="col-sm-6">
                      <input type="number" class="form-control"  placeholder="Initial Deposit Balance">
                    </div>
                  </div>
                   <div class="form-group row">
                    <label  class="col-sm-2 col-form-label">Account Number</label>
                    <div class="col-sm-6">
                      <input type="number" class="form-control"  placeholder="Account Number">
                    </div>
                  </div>   
             </form>
            </div>
            <div class="modal-footer justify-content-between">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <button type="button" class="btn btn-danger">Transfer</button>
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
