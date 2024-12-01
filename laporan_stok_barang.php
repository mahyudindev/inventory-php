<!DOCTYPE html>
<html>
<?php
include "configuration/config_etc.php";
include "configuration/config_include.php";
include "configuration/config_alltotal.php";
etc();encryption();session();connect();head();body();timing();
//alltotal();
pagination();
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
<?php
$decimal ="0";
$a_decimal =",";
$thousand =".";
?>
            <div class="content-wrapper">
                <section class="content-header">
</section>

<!-- SETTING START-->

<?php
error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
include "configuration/config_chmod.php";
$halaman = "stok_barang"; // halaman
$dataapa = "Stok Barang"; // data
$tabeldatabase = "barang"; // tabel database
$chmod = $chmenu8; // Hak akses Menu
$forward = mysqli_real_escape_string($conn, $tabeldatabase); // tabel database
$forwardpage = mysqli_real_escape_string($conn, $halaman); // halaman
$search = $_POST['search'];

?>

<!-- SETTING STOP -->

<textarea id="printing-css" style="display:none;">.no-print{display:none}</textarea>
<iframe id="printing-frame" name="print_frame" src="about:blank" style="display:none;"></iframe>
<script type="text/javascript">
function printDiv(elementId) {
 var a = document.getElementById('printing-css').value;
 var b = document.getElementById(elementId).innerHTML;
 window.frames["print_frame"].document.title = document.title;
 window.frames["print_frame"].document.body.innerHTML = '<style>' + a + '</style>' + b;
 window.frames["print_frame"].window.focus();
 window.frames["print_frame"].window.print();
}
</script>



         <script>
 window.setTimeout(function() {
    $("#myAlert").fadeTo(500, 0).slideUp(1000, function(){
        $(this).remove();
    });
}, 5000);
</script>

                            <?php
$hapusberhasil = $_POST['hapusberhasil'];

if ($hapusberhasil == 1) {
?>
    <div id="myAlert"  class="alert alert-success alert-dismissible fade in" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <strong>Berhasil!</strong> <?php echo $dataapa;?> telah berhasil dihapus dari Data <?php echo $dataapa;?>.
</div>

<!-- BOX HAPUS BERHASIL -->
<?php
} elseif ($hapusberhasil == 2) {
?>
           <div id="myAlert" class="alert alert-danger alert-dismissible fade in" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <strong>Gagal!</strong> <?php echo $dataapa;?> tidak bisa dihapus dari Data <?php echo $dataapa;?> karena telah melakukan transaksi sebelumnya, gunakan menu update untuk merubah informasi <?php echo $dataapa;?> .
</div>
<?php
} elseif ($hapusberhasil == 3) {
?>
           <div id="myAlert" class="alert alert-danger alert-dismissible fade in" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <strong>Gagal!</strong> Hanya user tertentu yang dapat mengupdate Data <?php echo $dataapa;?> .
</div>
<?php
}

?>
       <!-- BOX INFORMASI -->
    <?php
if ($chmod == '1' || $chmod == '2' || $chmod == '3' || $chmod == '4' || $chmod == '5' || $_SESSION['jabatan'] == 'admin') {
} else {
?>
   <div class="callout callout-danger">
    <h4>Info</h4>
    <b>Hanya user tertentu yang dapat mengakses halaman <?php echo $dataapa;?> ini .</b>
    </div>
    <?php
}
?>

<?php
if ($chmod >= 1 || $_SESSION['jabatan'] == 'admin') {
?>

<?php

        $sqla="SELECT no, COUNT( * ) AS totaldata FROM $forward";
    $hasila=mysqli_query($conn,$sqla);
    $rowa=mysqli_fetch_assoc($hasila);
    $totaldata=$rowa['totaldata'];

?>
            <div class="box" id="tabel1">
            <div class="box-header">
            <h1 style="text-align:center; margin-top:5px; margin-bottom:5px"><span class="box-title" style="font-size:24px; font-weight:bold">MONTOK</span>    </h1>
            <h1 style="text-align:center; margin-top:5px; margin-bottom:5px"><span class="box-title" style="font-size:24px; font-weight:bold">MONITORING STOCK</span>     </h1>
<table class="pull-right" style="margin-right:20px;">
  <tr>
    <th style="padding-right:10px;">User : </th>
    <td style="padding-right:10px;"> <?php echo $_SESSION['username'];?></td>
  </tr>
  <tr>
    <th style="padding-right:10px;">Date :</th>
    <td style="padding-right:10px;"> <?php echo date('d-m-Y');?> </td>
  </tr>
  <tr>
    <th style="padding-right:10px;">Time :</th>
    <td style="padding-right:10px;"> <?php echo date('H:i');?> WIB</td>
  </tr>

</table>
         
          


           <div style="margin-right:20px; margin-left:20px">
        <form method="post">
        <br/>
                <div class="input-group input-group-sm" style="width: 250px;">
               

                <h3><span class="box-title" style="font-size:15px; font-weight:bold">PT. INDOMARCO ADI PRIMA</span> </h3>
                <p style="white-space: nowrap;">Kawasan Pergudangan Bizlink Citra Raya Blok 01/26 Kec Cikupa 1</p>
                <h3><span class="box-title" style="font-size:15px; font-weight:bold">IAP CIKUPA-CLUB</span> 
                </div>

          </form>
      </div>

            </div>

                                <!-- /.box-header -->
                                  <!-- /.Paginasi -->
                                 <?php
    error_reporting(E_ALL ^ E_DEPRECATED);
    $sql    = "select * from barang order by kode";
    $result = mysqli_query($conn, $sql);
    $rpp    = 15;
    $reload = "$halaman"."?pagination=true";
    $page   = intval(isset($_GET["page"]) ? $_GET["page"] : 0);

    if ($page <= 0)
        $page = 1;
    $tcount  = mysqli_num_rows($result);
    $tpages  = ($tcount) ? ceil($tcount / $rpp) : 1;
    $count   = 0;
    $i       = ($page - 1) * $rpp;
    $no_urut = ($page - 1) * $rpp;
?>
                            <div class="box-body table-responsive">
                                    <table class="table table-hover ">
                                        <thead >
                                        <tr>
                                            <th style="text-align:center;border-bottom:1px solid #ddd" rowspan="2">Item Code</th>
                                            <th style="text-align:center;border-bottom:1px solid #ddd" rowspan="2">Short Name</th>
                                            <th style="text-align:center;border-bottom:1px solid #ddd" rowspan="2">UOM</th>
                                            <th style="text-align:center;border-bottom:1px solid #ddd" colspan="2">Stock Onhand</th>
                                            <th style="text-align:center;border-bottom:1px solid #ddd" colspan="2">Stock Available</th>
                                            <th style="text-align:center;border-bottom:1px solid #ddd" colspan="2">Stock Minimum</th>
                                            <th style="text-align:center;border-bottom:1px solid #ddd" colspan="2">Stock Maximum</th>
                                            <th style="text-align:center;border-bottom:1px solid #ddd" colspan="2">Remarks</th>
                                        </tr>
                                        <tr>
                                            <th style="text-align:center;border-bottom:1px solid #ddd">PKG</th>
                                            <th style="text-align:center;border-bottom:1px solid #ddd">FRC</th>
                                            <th style="text-align:center;border-bottom:1px solid #ddd">PKG</th>
                                            <th style="text-align:center;border-bottom:1px solid #ddd">FRC</th>
                                            <th style="text-align:center;border-bottom:1px solid #ddd">PKG</th>
                                            <th style="text-align:center;border-bottom:1px solid #ddd">FRC</th>
                                            <th style="text-align:center;border-bottom:1px solid #ddd">PKG</th>
                                            <th style="text-align:center;border-bottom:1px solid #ddd">FRC</th>
                                            <th style="text-align:center;border-bottom:1px solid #ddd">UNDER</th>
                                            <th style="text-align:center;border-bottom:1px solid #ddd">OVER</th>
                                        </tr>
                                        </thead>
                                          <?php
    error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
    $search = $_POST['search'];

    if ($search != null || $search != "") {

        if ($_SERVER["REQUEST_METHOD"] == "POST") {

              if(isset($_POST['search'])){
        $query1="select * from barang where kode like '%$search%' or nama like '%$search%' or brand like '%$search%' order by barang.no limit $rpp";
        $hasil = mysqli_query($conn,$query1);
        $no = 1;
        while ($fill = mysqli_fetch_assoc($hasil)){
          ?>

        <tbody>


    <?php
          ;
        }
        ?>
</tbody>


        ?>
</tbody></table>

 <div align="right"><?php if($tcount>=$rpp){ echo paginate_one($reload, $page, $tpages);}else{} ?></div>
     <?php
      }

    }

  } else {
    while(($count<$rpp) && ($i<$tcount)) {
      mysqli_data_seek($result,$i);
      $fill = mysqli_fetch_array($result);
      ?>
                      <tbody>
    <tr>
        <td style="text-align:center;"><?php  echo mysqli_real_escape_string($conn, $fill['kode']); ?></td>
        <td style="text-align:center;"><?php  echo mysqli_real_escape_string($conn, $fill['sku']); ?></td>
        <td style="text-align:center;"><?php  echo mysqli_real_escape_string($conn, $fill['satuan']); ?></td>
        <td style="text-align:center;"><?php  echo mysqli_real_escape_string($conn, $fill['sisa']); ?></td>
        <td style="text-align:center;">0</td>
        <td style="text-align:center;"><?php  echo mysqli_real_escape_string($conn, $fill['sisa']); ?></td>
        <td style="text-align:center;">0</td>
        <td style="text-align:center;"><?php  echo mysqli_real_escape_string($conn, $fill['stokmin']); ?></td>
        <td style="text-align:center;">0</td>
        <td style="text-align:center;"><?php  echo mysqli_real_escape_string($conn, $fill['barcode']); ?></td>
        <td style="text-align:center;">0</td>
        <td style="text-align:center;"><?php if($fill['sisa']<$fill['stokmin']){echo "<span style='color:red'>" . ($fill['stokmin'] - $fill['sisa']) . "</span>";}?></td>
        <td style="text-align:center;"><?php if($fill['sisa']>$fill['barcode']){echo "<span style='color:red'>".($fill['sisa']-$fill['baracode'])."</span>";}?></td>
    </tr>
    
    <!-- Add more rows as needed -->
</tbody>

      <?php
      $i++;
      $count++;
    }

    ?>
                  </tbody></table>
          <div align="right"><?php if($tcount>=$rpp){ echo paginate_one($reload, $page, $tpages);}else{} ?></div>
  <?php } ?>

                               </div>
                                <!-- /.box-body -->
                            </div>

              <?php } else {} ?>
              <div align="right"  style="padding-right:15px"  class="no-print" id="no-print" >
             <div align="left" class="no-print" id="no-print"> <a onclick="javascript:printDiv('tabel1');" class="btn btn-default btn-flat" name="cetak" value="cetak"><span class="glyphicon glyphicon-print"></span></a><?php echo " "; ?>
               <a onclick="window.location.href='configuration/config_export?forward=<?php echo $forward; ?>&search=<?php echo $search; ?>'" class="btn btn-default btn-flat" name="cetak" value="export excel"><span class="glyphicon glyphicon-save-file"></span></a></div> <br/>
             </div>
                        </div>
                        <!-- ./col -->
                    </div>
                    <!-- /.row -->
                    <!-- Main row -->
                    <div class="row">
                    </div>
                    <!-- /.row (main row) -->
                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
           <?php footer();?>
            <div class="control-sidebar-bg"></div>
        </div>
        <!-- ./wrapper -->
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
