<?php


$nama = "";
$username = "";
$email    = "";
$errors = array(); 

$db = mysqli_connect('localhost', 'root', '', 'pekabencana');

if (isset($_POST['reg_user'])) {
  $name = mysqli_real_escape_string($db, $_POST['name']);
  $username = mysqli_real_escape_string($db, $_POST['username']);
  $email = mysqli_real_escape_string($db, $_POST['email']);
  $password = mysqli_real_escape_string($db, $_POST['password']);

  if (empty($name)) { array_push($errors, "Name is required"); }
  if (empty($username)) { array_push($errors, "Username is required"); }
  if (empty($email)) { array_push($errors, "Email is required"); }
  if (empty($password1)) { array_push($errors, "Password is required"); }
  if ($password1 != $password2) {
   array_push($errors, "The two passwords do not match");
 }

 $user_check_query = "SELECT * FROM users WHERE username='$username' OR email='$email' LIMIT 1";
 $result = mysqli_query($db, $user_check_query);
 $user = mysqli_fetch_assoc($result);

 if ($user) {
  if ($user['username'] === $username) {
    array_push($errors, "Username already exists");
  }

  if ($user['email'] === $email) {
    array_push($errors, "email already exists");
  }
}

if (count($errors) == 0) {
 $password = md5($password1);

 $query = "INSERT INTO kontributor (name, username, email, password) 
 VALUES('$name', $username', '$email', '$password')";
 mysqli_query($db, $query);
 $_SESSION['username'] = $username;
 $_SESSION['success'] = "You are now logged in";
 header('location: kontributor.php');
}
}

// LOGIN USER
if (isset($_POST['login'])) {
  $username = mysqli_real_escape_string($db, $_POST['username']);
  $password = mysqli_real_escape_string($db, $_POST['password']);

  if (empty($username)) {
    array_push($errors, "Username is required");
  }
  if (empty($password)) {
    array_push($errors, "Password is required");
  }

  if (count($errors) == 0) {
    // $password = md5($password);
    $query = "SELECT * FROM kontributor WHERE username='$username' AND password='$password'";
    $results = mysqli_query($db, $query);
    
    if (mysqli_num_rows($results) == 1) {
      // echo "string";
      $_SESSION['username'] = $username;
      $_SESSION['success'] = "You are now logged in";
      header('location: kontributorDashboard.php');
    }else {
      // echo "NO";
      array_push($errors, "Wrong username/password combination");
      header('location: loginKontributor.php');
    }
  }
}

?>