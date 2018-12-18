<?php 
	include('dbKonten.php');

/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "pekabencana");

$judul = $_POST['judul'];
	$kabupatenkota = $_POST['kabupatenkota'];
	$provinsi = $_POST['provinsi'];
	$kategori = $_POST['kategori'];
	$isi = $_POST['isi'];
	$gambar = $_POST['gambar'];
	$video = $_POST['video'];
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Attempt insert query execution
$sql = "INSERT INTO konten (judul, kabupatenkota, provinsi, kategori, isi, foto, video) VALUES ('$judul', '$kabupatenkota', '$provinsi', '$kategori', '$isi', '$gambar', '$video')";
if(mysqli_query($link, $sql)){
    echo "Records inserted successfully.";
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
  header('location: kontributorDashboard.php');
// Close connection
mysqli_close($link);



	
 ?>