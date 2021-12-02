<?php
    include "koneksi.php";

    $username = strtolower($_POST['username']);
    $password = $_POST['password'];
    $co_password = $_POST['co_password'];

    // cek username sdh ada atau belum 
        $result = mysqli_query($konek, "SELECT username FROM user WHERE username = '$username'");
        if($result){
            echo "
            <script>
                alert('Username sudah terdaftar!');
                document.location.href = 'signup.php';
            </script>
        ";
        }
    // cek apakah konfirmasi password sama
        if($password != $co_password){
            echo "
            <script>
                alert('Konfirmasi password tidak sesuai!');
                document.location.href = 'signup.php';
            </script>
        ";
        }
    //enkripsi password
    $epassword = password_hash($password, PASSWORD_DEFAULT);

    $query = mysqli_query($konek, "INSERT INTO user VALUES ('$username','$epassword')");

    if($query){
        header("location:login.php");
    }
    else{
        header("location:signup.php");
    }
?>