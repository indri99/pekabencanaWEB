<?php 
  session_start(); 

  if (!isset($_SESSION['username'])) {
    $_SESSION['msg'] = "You must log in first";
    header('location: loginAs.php');
  }

  if (isset($_GET['logout'])) {
    session_destroy();
    unset($_SESSION['username']);
    header("location: loginAs.php");
  }

?>
<?php include('dbKonten.php')?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>PEKA BENCANA</title>
    <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/libs/css/style.css">
    <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" href="assets/vendor/charts/chartist-bundle/chartist.css">
    <link rel="stylesheet" href="assets/vendor/charts/morris-bundle/morris.css">
    <link rel="stylesheet" href="assets/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/vendor/charts/c3charts/c3.css">
    <link rel="stylesheet" href="assets/vendor/fonts/flag-icon-css/flag-icon.min.css">
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Candal|Alegreya+Sans">
  <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/imagehover.min.css">
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
  <!--Navigation bar-->
  <nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav navbar-left">
          <li><a href="kontributor.php">KONTRIBUTOR</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li>
            <div class="collapse navbar-collapse " id="navbarSupportedContent">
              <ul class="navbar-nav ml-auto navbar-right-top">
                <li class="nav-item dropdown nav-user"><br>
                  <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="img/asKontributor.png" alt="" class="user-avatar-md rounded-circle"></a>
                    <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                      <div class="nav-user-info">
                        <h5 class="mb-0 text-white nav-user-name"><strong><?php echo $_SESSION['username']; ?></strong> </h5>
                      </div>
                      <a class="dropdown-item" href="index.php?logout='1'"><i class="fas fa-power-off mr-2"></i>     Logout</a>
                    </div>  
                </li>
              </ul>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </nav>
<!-- ============================================================== -->
<!-- end navbar -->
<!-- ============================================================== -->
<div class="row">
  <div id="sidebar" class="column">
    <ul>
      <li><a href="kontributorDashboard.php"><em class="fa fa-home"></em> Dashboard</a></li>
      <li><a href="kontributorKonten.php"><em class="fa fa-pencil-square-o"></em> Konten</a></li>
    </ul>
  </div>
</div>
<!-- Page content -->
<div class="content">
  <form action="dbKonten.php" method="post">
    <div class="row">
      <div class="col-25">
        <label for="judul">Judul</label>
      </div>
      <div class="col-75">
        <input type="text" id="judul" name="judul" placeholder="">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="kabupatenkota">Kabupaten/Kota</label>
      </div>
      <div class="col-75">
        <input type="text" id="kabupatenkota" name="kabupatenkota" placeholder="">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="provinsi">Provinsi</label>
      </div>
      <div class="col-75">
        <input type="text" id="provinsi" name="provinsi" placeholder="">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="kategori">Kategori</label>
      </div>
      <div class="col-75">
        <select id="kategori" name="kategori">
          <option value="gempa">Gempa</option>
          <option value="tsunami">Tsunami</option>
          <option value="gunung">Gunung Berapi</option>
          <option value="kebakaran">Kebakaran Hutan</option>
          <option value="angin">Angin Tornado</option>
          <option value="tanah">Tanah Longsor</option>
        </select>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="isi">Isi</label>
      </div>
      <div class="col-75">
        <textarea id="isi" name="isi" placeholder="" style="height:200px"></textarea>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="gambar">Foto</label>
      </div>
      <div class="col-75">
        <div class="custom-file">
            <div class="custom-file">
              <input type="file" name="gambar" class="custom-file-input" id="customFile">
              <label class="custom-file-label" for="customFile">Choose file</label>
            </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="video">Video</label>
      </div>
      <div class="col-75">
        <div class="custom-file">
            <div class="custom-file">
              <input type="file" name="video" class="custom-file-input" id="customFile">
              <label class="custom-file-label" for="customFile">Choose file</label>
            </div>
        </div>
        <input type="submit" name="tbh_konten" value="Tambah Konten" <?php include('dbKonten.php')?>>

      </div>
    </div>
  </form>
</div>
</body>
</html>