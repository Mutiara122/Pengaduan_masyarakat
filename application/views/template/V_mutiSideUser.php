 <!-- Sidebar -->
 <ul class="navbar-nav bg-gradient sidebar sidebar-dark accordion"  style="background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%)"> 

     <!-- Sidebar - Brand -->
     <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<?=base_url('C_mutiUser')?>">
         <div class="sidebar-brand-icon rotate-n-15">
             <i class="fas fa-laugh-wink"></i>
         </div>
         <div class="sidebar-brand-text mx-3">Pengaduan <sup>Masyarakat</sup></div>
     </a>

     <!-- Divider -->
     <hr class="sidebar-divider my-0">

     <!-- Nav Item - Dashboard -->
     <li class="nav-item active">
         <a class="nav-link" href="<?=base_url('C_mutiUser')?>">
             <i class="fas fa-fw fa-tachometer-alt"></i>
             <span>Dashboard</span></a>
     </li>

     <!-- Divider -->



     <hr class="sidebar-divider">

    
     <li class="nav-item">
         <a class="nav-link" href="<?= base_url('C_mutiUser/pengaduan')?>">
             <i class="fas fa-fw fa-chart-area"></i>
             <span>Pengaduan</span></a>
     </li>
     

     <hr class="sidebar-divider">

     

     <!-- Sidebar Toggler (Sidebar) -->
     <div class="text-center d-none d-md-inline">
         <button class="rounded-circle border-0" id="sidebarToggle"></button>
     </div>

     <!-- Sidebar Message -->


 </ul>
 <!-- End of Sidebar -->