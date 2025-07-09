<!DOCTYPE html>
<html>
<?php
include "configuration/config_include.php";
include "configuration/config_alltotal.php";
include "configuration/config_connect.php"
;encryption();session();connect();head();body();timing();
//pagination();
?>
<?php
        $decimal ="0";
        $a_decimal =",";
        $thousand =".";
        ?>
<?php
if (!login_check()) {
?>
<meta http-equiv="refresh" content="0; url=logout" />
<?php
exit(0);
}
?>
<div class="wrapper">
<?php
theader();
menu();
?>
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
</section>
                <!-- Main content -->
                <section class="content">
                    <!-- Small boxes (Stat box) -->
                    <div class="row">
                        <!-- ./col -->

<!-- SETTING START-->

<?php
//error_reporting(E_ALL ^ (E_NOTICE | E_WARNING) );
$halaman = "index"; // halaman
$dataapa = "Dashboard"; // data
$tabeldatabase = "index"; // tabel database
$forward = mysqli_real_escape_string($conn, $tabeldatabase); // tabel database
$forwardpage = mysqli_real_escape_string($conn, $halaman); // halaman
//$search = $_POST['search'];
?>

<!-- SETTING STOP -->


<!-- BREADCRUMB -->
<div class="col-lg-12">
<ol class="breadcrumb ">
<li><a href="#">Dashboard </a></li><span class="badge bg-light-blue pull-right"> <?php echo $today;?> </span>
</ol>
</div>

<!-- BREADCRUMB -->




                                <!-- /.box-body -->

                        <!-- ./col -->

                </div>

<?php if($_SESSION['jabatan'] !='admin'){}else{ ?>

 <div class="row">
<?php

error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
$alert = $_GET['alert'];

$sql1="SELECT url FROM backset";
        $hasil1=mysqli_query($conn,$sql1);
        $row=mysqli_fetch_assoc($hasil1);
        $url=$row['url'];

        $sql_supplier=mysqli_query($conn, "SELECT * FROM supplier");
        $supplier=mysqli_num_rows($sql_supplier);

        $sql_driver=mysqli_query($conn, "SELECT * FROM driver");
        $driver_count=mysqli_num_rows($sql_driver);

if ($alert == 1 && $url =='#'){
?>


<div class="alert alert-danger alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h4><i class="icon fa fa-ban"></i> Peringatan!</h4>
                Url Aplikasi belum disesuaikan dengan url anda sekarang. Klik Tombol pengaturan dibawah untuk menyesuaikan dengan url dimana anda menggunakan aplikasi. <br>
                <button type="button" class="btn btn-success btn btn-xs" data-toggle="modal" data-target="#modal-default">
                Pengaturan
              </button>
              </div>

   <?php } else {?>            
                   

                         <div class="col-lg-3 col-xs-6">
                           <!-- small box -->
                           <div class="small-box bg-aqua">
                               <div class="inner">
                                   <h3><?php echo $datax1; ?></h3>
                                   <p>Karyawan</p>
                               </div>
                               <div class="icon">
                                   <i class="ion ion-person"></i>
                               </div>
                                 <a href="admin" class="small-box-footer">Info lengkap <i class="fa fa-arrow-circle-right"></i></a>
                           </div>
                       </div>

                       <div class="col-lg-3 col-xs-6">
                         <!-- small box -->
                         <div class="small-box bg-green">
                             <div class="inner">
                                 <h3><?php echo $supplier; ?></h3>
                                 <p>Supplier</p>
                             </div>
                             <div class="icon">
                                 <i class="ion ion-person"></i>
                             </div>
                               <a href="supplier" class="small-box-footer">Info lengkap <i class="fa fa-arrow-circle-right"></i></a>
                         </div>
                     </div>

                     <div class="col-lg-3 col-xs-6">
                       <!-- small box -->
                       <div class="small-box bg-blue">
                           <div class="inner">
                               <h3><?php echo $driver_count; ?></h3>
                               <p>Driver</p>
                           </div>
                           <div class="icon">
                               <i class="ion ion-android-car"></i>
                           </div>
                             <a href="driver" class="small-box-footer">Info lengkap <i class="fa fa-arrow-circle-right"></i></a>
                       </div>
                   </div>

                   <div class="col-lg-3 col-xs-6">
                     <!-- small box -->
                     <div class="small-box bg-yellow">
                           <div class="inner">
                               <h3><?php echo $datax3; ?></h3>
                               <p>Barang</p>
                           </div>
                           <div class="icon">
                               <i class="glyphicon glyphicon-blackboard"></i>
                           </div>
                             <a href="barang" class="small-box-footer">Info lengkap <i class="fa fa-arrow-circle-right"></i></a>
                       </div>
                   </div>

                   <div class="col-lg-3 col-xs-6">
                     <!-- small box -->
                     <div class="small-box bg-red">
                         <div class="inner">
                             <h3><?php echo $datax4; ?></h3>
                             <p>Barang dg Stok dibawah <?php echo $alert; ?></p>
                         </div>
                         <div class="icon">
                             <i class="glyphicon glyphicon-folder-close"></i>
                         </div>
                           <a href="stok_menipis" class="small-box-footer">Info lengkap <i class="fa fa-arrow-circle-right"></i></a>
                     </div>
                 </div>



                     </div>

<?php } } ?>


<!-- Awal Chart  -->



<!-- akhir chart -->
                                <!-- /.box-body -->
                            </div>

            <!-- BATAS -->



                    </div>
                    <!-- /.row -->
                    <!-- Main row -->
                    <div class="row">




                    </div>
                    <!-- /.row (main row) -->
                </section>
                <!-- /.content -->
            </div>








             <div class="modal fade" id="modal-default">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Url Aplikasi</h4>
              </div>

                <form method="post" >
              <div class="modal-body">
                <p> Url Aplikasi adalah alamat domain website/subdomain atau bisa berupa folder di localhost yang anda ketika pada address bar browser anda untuk mengakses aplikasi. Saat ini Url aplikasi seperti digambar, anda perlu menggantinya dengan milik anda sendiri.  <img src="dist/img/url.png"></p>
                <p>Anda wajib ganti URL Aplikasi agar bisa berjalan dengan baik</p>

                

                 <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Url Aplikasi Baru</label>

                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="url" placeholder="idwares.esy.es">
                  </div>
                </div>

              </div>


              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="submit" name="save" class="btn btn-primary">Save changes</button>
              </div>
            </div>

          </form>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
 <?php


if(isset($_POST['save'])){
       if($_SERVER["REQUEST_METHOD"] == "POST"){

         $url = mysqli_real_escape_string($conn, $_POST['url']);

         $sqlu = "UPDATE backset SET url='$url' ";
         $query = mysqli_query($conn, $sqlu);


         if($query){
           echo "<script type='text/javascript'>  alert('Berhasil, Url Aplikasi telah diubah!'); </script>";
             echo "<script type='text/javascript'>window.location = 'index';</script>";
         }

       } }

        ?>


            <!-- /.content-wrapper -->
                   <?php footer();?>
            <div class="control-sidebar-bg"></div>
        </div>
              <script src="dist/plugins/jQuery/jquery-2.2.3.min.js"></script>
        <script src="libs/1.11.4-jquery-ui.min.js"></script>
        <script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
        <script src="dist/bootstrap/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
        <script src="dist/plugins/morris/morris.min.js"></script>
        <script src="dist/plugins/sparkline/jquery.sparkline.min.js"></script>
        <script src="dist/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
        <script src="dist/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
        <script src="dist/plugins/knob/jquery.knob.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
        <script src="dist/plugins/daterangepicker/daterangepicker.js"></script>
        <script src="dist/plugins/datepicker/bootstrap-datepicker.js"></script>
        <script src="dist/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
        <script src="dist/plugins/slimScroll/jquery.slimscroll.min.js"></script>
        <script src="dist/plugins/fastclick/fastclick.js"></script>
        <script src="dist/js/app.min.js"></script>
        <script src="dist/js/pages/dashboard.js"></script>
        <script src="dist/js/demo.js"></script>
    <script src="dist/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="dist/plugins/datatables/dataTables.bootstrap.min.js"></script>
    <script src="dist/plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <script src="dist/plugins/fastclick/fastclick.js"></script>

    </body>
</html>
