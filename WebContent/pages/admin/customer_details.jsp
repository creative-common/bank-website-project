<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>YourBank | Customer Details </title>
  <jsp:include page="/pages/header.jsp"/>
</head>


<body class="hold-transition sidebar-mini">

<jsp:include page="/pages/admin/admin_nav.jsp"/>
<!-- Content Wrapper. Contains page content -->
  <div style="padding: 50px; " class="content-wrapper">

    <div class="content">
 
            <!-- TABLE: LATEST ORDERS -->
            <div class="card">
              <div class="card-header border-transparent">
                <h3 class="card-title">Customer Client Detail</h3>

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
                      <td>Address</td>
                      <td>414 Wellignton Drive, Toronto L5X2K1</td>
                    </tr>
                    
                     <tr>
                      <td>Phone Number</td>
                      <td>99123412312</td>
                    </tr>
                    
                    <tr>
                      <td>Registered Email</td>
                      <td>sanjeet@gmail.com</td>
                    </tr>
                    
                    <tr>
                      <td>Accounts</td>
                      <td><a href="/YourBank/admin/customer/account">1231231233</a>, <a href="/YourBank/admin/customer/account">1231231231</a></td>
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
    
     <div class="card">
	          <div class="card-header border-transparent">
	          	<h3 class="card-title">Admin Banking Option</h3>
	          </div>
	          <div class="card-body p-20">
	          	<button class="btn btn-info" data-toggle="modal" data-target="#modal-new-account">Create New Account</button>
	          </div>
    </div>  
    
    
    
    </div>
    
    
    
 <!-- New Account For Existing Customer Modal  -->
    <div class="modal fade" id="modal-new-account">
        <div class="modal-dialog modal-xl">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">New Account Wizard</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
             <form class="form-horizontal">
	            <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Select</label>
                        <div class="col-sm-10">
	                        <select class="form-control">
		                          <option>Momentum Plus</option>
		                          <option>Ultimate Plus</option>
		                          <option>Preferred Package</option>
                        	</select>
                        </div>
                      </div>
                      
               <div class="form-group row">
                    <label  class="col-sm-2 col-form-label">Initial Deposit Balance</label>
                    <div class="col-sm-10">
                      <input type="number" class="form-control"  placeholder="Initial Deposit Balance">
                    </div>
                  </div>       
                      
             </form>
            </div>
            <div class="modal-footer justify-content-between">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <button type="button" class="btn btn-danger">Create New Account</button>
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
    