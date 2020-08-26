<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>YourBank | HomePage </title>
  <jsp:include page="/pages/header.jsp"/>
</head>


<body class="hold-transition sidebar-mini">

<jsp:include page="/pages/admin/admin_nav.jsp"/>
  
<!-- Content Wrapper. Contains page content -->
  <div style="padding: 50px; " class="content-wrapper">
   
   <!-- Content Header (Page header) -->


    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
     
      
      
        <div class="row">
          <div class="col-12">
            <!-- Default box -->
            <div class="card">
              <div class="card-body">
              <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3>150</h3>

                <p>New Customers</p>
              </div>
              <div class="icon">
                <i class="ion ion-bag"></i>
              </div>
              <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3>$4300</h3>

                <p>Today Withdrawal</p>
              </div>
              <div class="icon">
                <i class="ion ion-stats-bars"></i>
              </div>
              <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3>$5400</h3>

                <p>Today Deposit</p>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
              </div>
              <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
                <h3>65</h3>

                <p>New Accounts</p>
              </div>
              <div class="icon">
                <i class="ion ion-pie-graph"></i>
              </div>
              <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
        </div>
        <!-- /.row -->
              </div>
              <!-- /.card-body -->
             
            </div>
            <!-- /.card -->
          </div>
        </div>
      </div>
    </section>
    <!-- /.content -->
    
    
    <section class="content">
    
    
            <!-- TABLE: LATEST ORDERS -->
            <div class="card">
              <div class="card-header border-transparent">
                <h3 class="card-title">New Banking Clients</h3>

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
    
    </section>
    
    
    
    
    
   
  </div>
  <!-- /.content-wrapper -->
 
<jsp:include page="/pages/scripts.jsp"/>
</body>
</html>
