<?php
include "configuration/config_etc.php";
include "configuration/config_include.php";
etc();encryption();session();connect();head();body();timing();
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
            <div class="content-wrapper">
                <section class="content-header">
</section>
                <section class="content">
                    <div class="row">
            <div class="col-lg-12">
<!-- SETTING START-->
<?php
error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
include "configuration/config_chmod.php";
$halaman = "driver";
$dataapa = "Driver";
$tabeldatabase = "driver";
$chmod = $chmenu2;
$forward = mysqli_real_escape_string($conn, $tabeldatabase);
$forwardpage = mysqli_real_escape_string($conn, $halaman);
$search = $_POST['search'];
$insert = $_POST['insert'];

function autoNumber(){
  global $conn;
  $query = "SELECT MAX(kode) as max_id FROM driver";
  $result = mysqli_query($conn, $query);
  $data = mysqli_fetch_array($result);
  $id_max = $data['max_id'];
  $sort_num = (int) substr($id_max, 0, 4);
  $sort_num++;
  $new_code = sprintf("%04s", $sort_num);
  return $new_code;
}

if($insert == "1"){
  $kode = autoNumber();
  $nama = mysqli_real_escape_string($conn, $_POST['nama']);
  $nohp = mysqli_real_escape_string($conn, $_POST['nohp']);
  $stmt = $conn->prepare("INSERT INTO driver (kode, nama, nohp) VALUES (?, ?, ?)");
  $stmt->bind_param("sss", $kode, $nama, $nohp);
  if($stmt->execute()){
    echo '<script>alert("Berhasil Menambahkan Data");</script>';
  } else {
    echo '<script>alert("Gagal Menambahkan Data");</script>';
  }
  $stmt->close();
}

if(isset($_POST['update'])){
  $kode = mysqli_real_escape_string($conn, $_POST['kode']);
  $nama = mysqli_real_escape_string($conn, $_POST['nama']);
  $nohp = mysqli_real_escape_string($conn, $_POST['nohp']);
  $stmt = $conn->prepare("UPDATE driver SET nama=?, nohp=? WHERE kode=?");
  $stmt->bind_param("sss", $nama, $nohp, $kode);
  if($stmt->execute()){
    echo '<script>alert("Berhasil Mengubah Data");</script>';
  } else {
    echo '<script>alert("Gagal Mengubah Data");</script>';
  }
  $stmt->close();
}

if(isset($_GET['delete'])){
  $kode = mysqli_real_escape_string($conn, $_GET['kode']);
  $stmt = $conn->prepare("DELETE FROM driver WHERE kode=?");
  $stmt->bind_param("s", $kode);
  if($stmt->execute()){
    echo '<script>alert("Berhasil Menghapus Data");</script>';
    echo '<script>window.location.href="driver.php"</script>';
  } else {
    echo '<script>alert("Gagal Menghapus Data");</script>';
  }
  $stmt->close();
}

?>

<!-- SETTING STOP -->

<ol class="breadcrumb">
  <li><a href="index.php">Dashboard</a></li>
  <li class="active"><?php echo $dataapa;?></li>
</ol>

<div class="box box-primary">
  <div class="box-header with-border">
    <h3 class="box-title">Data <?php echo $dataapa;?></h3>
    <div class="box-tools pull-right">
      <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
        <i class="fa fa-minus"></i>
      </button>
    </div>
  </div>
  <div class="box-body">
    <div class="col-lg-6">
      <form method="post">
        <div class="form-group">
          <label>Nama Driver</label>
          <input type="text" class="form-control" name="nama" required>
        </div>
        <div class="form-group">
          <label>No. HP</label>
          <input type="text" class="form-control" name="nohp" required>
        </div>
        <button type="submit" name="insert" value="1" class="btn btn-primary">Simpan</button>
      </form>
    </div>
    <div class="col-lg-12" style="margin-top: 20px;">
      <table class="table table-bordered table-striped table-hover">
        <thead>
          <tr>
            <th>No</th>
            <th>Kode</th>
            <th>Nama</th>
            <th>No. HP</th>
            <th>Aksi</th>
          </tr>
        </thead>
        <tbody>
          <?php
          $sql = "SELECT * FROM driver";
          if(isset($_POST['search'])){
            $search = mysqli_real_escape_string($conn, $_POST['search']);
            $sql .= " WHERE nama LIKE '%$search%' OR kode LIKE '%$search%'";
          }
          $result = mysqli_query($conn, $sql);
          $no = 1;
          while($row = mysqli_fetch_assoc($result)){
          ?>
          <tr>
            <td><?php echo $no++;?></td>
            <td><?php echo $row['kode'];?></td>
            <td><?php echo $row['nama'];?></td>
            <td><?php echo $row['nohp'];?></td>
            <td>
              <a href="#" class="btn btn-warning btn-sm" data-toggle="modal" data-target="#editModal<?php echo $row['kode'];?>">Edit</a>
              <a href="driver.php?delete=true&kode=<?php echo $row['kode'];?>" class="btn btn-danger btn-sm" onclick="return confirm('Yakin ingin menghapus data ini?')">Hapus</a>
            </td>
          </tr>
          <!-- Edit Modal -->
          <div class="modal fade" id="editModal<?php echo $row['kode'];?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Edit Data Driver</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <form method="post">
                  <div class="modal-body">
                    <input type="hidden" name="kode" value="<?php echo $row['kode'];?>">
                    <div class="form-group">
                      <label>Nama Driver</label>
                      <input type="text" class="form-control" name="nama" value="<?php echo $row['nama'];?>" required>
                    </div>
                    <div class="form-group">
                      <label>No. HP</label>
                      <input type="text" class="form-control" name="nohp" value="<?php echo $row['nohp'];?>" required>
                    </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                    <button type="submit" name="update" class="btn btn-primary">Simpan Perubahan</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
          <?php } ?>
        </tbody>
      </table>
    </div>
  </div>
</div>

                    </div>
                </section>
            </div>
<?php footer();?>
<div class="control-sidebar-bg"></div>
</div>
        <script src="dist/plugins/jQuery/jquery-2.2.3.min.js"></script>
        <script src="dist/bootstrap/js/bootstrap.min.js"></script>
        <script src="dist/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="dist/plugins/datatables/dataTables.bootstrap.min.js"></script>
        <script src="dist/plugins/slimScroll/jquery.slimscroll.min.js"></script>
        <script src="dist/plugins/fastclick/fastclick.js"></script>
        <script src="dist/js/app.min.js"></script>
        <script src="dist/js/demo.js"></script>
<script>
  $(function () {
    $("#example1").DataTable();
  });
</script>
</body>
</html>
