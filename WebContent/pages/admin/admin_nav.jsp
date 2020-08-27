<!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="http://localhost:8080/YourBank/admin" class="brand-link">
      
      <span class="brand-text font-weight-light">YourBank</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="info">
          <a href="/YourBank/admin" class="d-block"><%= session.getAttribute( "first_name" ) %></a>
        </div>
      </div>

     

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
           <li class="nav-item">
            <a href="/YourBank/admin" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Dashboard
              </p>
            </a>
          </li>
           <li class="nav-item">
            <a href="/YourBank/admin/customers" class="nav-link">
              <i class="nav-icon fas fa-user"></i>
              <p>
                Customer
              </p>
            </a>
          </li>
           <li class="nav-item">
            <a href="/YourBank/admin/customer/new" class="nav-link">
              <i class="nav-icon fas fa-user-plus"></i>
              <p>
                New Customer
              </p>
            </a>
          </li>
          
          <li class="nav-item">
            <a href="/YourBank/Logout" class="nav-link">
              <i class="nav-icon fas fa-sign-out-alt"></i>
              <p>
                Log Out
               
              </p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>