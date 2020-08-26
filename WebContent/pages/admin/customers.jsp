<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>YourBank | Customer List </title>
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
                <h3 class="card-title">Customer List</h3>

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
                      <th>Customer ID</th>
                      <th>Name</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td><a href="/YourBank/admin/customer/detail">OR9841</a></td>
                      <td>Vatandeep Kaur</td>  
                    </tr>
                    
                    <tr>
                      <td><a href="/YourBank/admin/customer/detail">OR9842</a></td>
                      <td>Sanjeet Pal</td>
                    </tr>
                    
                    <tr>
                      <td><a href="/YourBank/admin/customer/detail">OR9843</a></td>
                      <td>Anjali</td>
                    </tr>
                    
                    <tr>
                      <td><a href="/YourBank/admin/customer/detail">OR9844</a></td>
                      <td>Daljit Singh</td>
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
    
    
    
    
    <jsp:include page="/pages/scripts.jsp"/>
</body>
</html>
    