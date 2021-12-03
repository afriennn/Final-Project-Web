<?php
include 'koneksi.php';
    session_start();
    // semisal belum login, langsung masuk ke index.php
    if (!isset($_SESSION['username'])) {
        header("Location: index.php");
    } else {
        $username = $_SESSION['username'];
        $idUser = $konek->query("SELECT `id` FROM `user` WHERE `user`.`username` = '$username'") -> fetch_assoc()['id'];
        $idMenu = $_GET['id'];
        $sql = "INSERT INTO `cart` VALUES (NULL, '$idUser', '$idMenu')";
        if ($konek->query($sql)) {
            header("Location:cart.php");
        } else {
            header("index.php");
        }
    }