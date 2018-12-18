<?php



$judul = "";
$kabupatenkota = "";
$provinsi    = "";
$isi = "";
$gambar = "";
$video = "";

$db = mysqli_connect('localhost', 'root', '', 'pekabencana');

if (isset($_POST['reg_konten'])) {
  $judul = mysqli_real_escape_string($db, $_POST['judul']);
  $kabupatenkota = mysqli_real_escape_string($db, $_POST['kabupatenkota']);
  $provinsi = mysqli_real_escape_string($db, $_POST['provinsi']);
  $isi = mysqli_real_escape_string($db, $_POST['isi']);
  $gambar = mysqli_real_escape_string($db, $_POST['gambar']);
  $video = mysqli_real_escape_string($db, $_POST['video']); 
}

?>