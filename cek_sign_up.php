<?php
    include "koneksi.php";

    $username = strtolower($_POST['username']);
    $password = $_POST['password'];
    $co_password = $_POST['co_password'];

    // cek username sdh ada atau belum 
        $result = mysqli_query($konek, "SELECT username FROM user WHERE username = $username");
        if($result){
            echo "<script>alert('username sudah terdaftar!');</script>";
            return false;
        }
    // cek apakah konfirmasi password sama
        if($password != $co_password){
            echo "<script> alert('konfirmasi password tidak sesuai!');</script>";
            return false;
        }
    //enkripsi password
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);

    $query = mysqli_query($konek, "INSERT INTO user VALUES ('','$username','$password')");

    if($query){
        header("location:login.php");
    }
    else{
        header("location:signup.php");
    }
?>