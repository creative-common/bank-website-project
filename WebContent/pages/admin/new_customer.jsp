    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>YourBank | New Account </title>
  <jsp:include page="/pages/header.jsp"/>
</head>


<body class="hold-transition sidebar-mini">

<jsp:include page="/pages/admin/admin_nav.jsp"/>

<div class="content">
<!-- Content Wrapper. Contains page content -->
  <div style="padding: 50px; " class="content-wrapper">

<!-- Horizontal Form -->
            <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">New Customer Form</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form class="form-horizontal">
                <div class="card-body">
                  <div class="form-group row">
                    <label  class="col-sm-2 col-form-label">First Name</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control"  placeholder="First Name">
                    </div>
                  </div>
                 <div class="form-group row">
                    <label  class="col-sm-2 col-form-label">Last Name</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control"  placeholder="Last Name">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label  class="col-sm-2 col-form-label">SIN</label>
                    <div class="col-sm-10">
                      <input type="number" class="form-control"  placeholder="SIN Number">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label  class="col-sm-2 col-form-label">Address</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control"  placeholder="Address">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label  class="col-sm-2 col-form-label">Contact</label>
                    <div class="col-sm-10">
                      <input type="number" class="form-control"  placeholder="Contact Number">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label  class="col-sm-2 col-form-label">Email</label>
                    <div class="col-sm-10">
                      <input type="email" class="form-control"  placeholder="Email">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label  class="col-sm-2 col-form-label">Password</label>
                    <div class="col-sm-10">
                      <input type="password" class="form-control"  placeholder="password">
                    </div>
                  </div>
                  
                 <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Account Type</label>
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
                  
                  
                </div>
                <!-- /.card-body -->
                <div class="card-footer">
                  <button type="submit" class="btn btn-info float-right">Create</button>
                  
                </div>
                <!-- /.card-footer -->
              </form>
            </div>
            <!-- /.card -->

</div>
</div>


<jsp:include page="/pages/scripts.jsp"/>


 
</body>
</html>