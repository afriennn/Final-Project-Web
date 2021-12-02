<?php
	include 'koneksi.php';
	session_start();

  	// semisal belum login, langsung masuk ke index.php
		if(!isset($_SESSION['username'])){
			header("Location: index.php");
		} else {
            $_SESSION['username'] = $idUser;
            $idUser = 
            $idMenu = $_POST['id_menu'];
            $sql = "INSERT INTO cart VALUES ('', '$idUser', '$idMenu')";
            if ($konek->query($sql)) {
                header("Location:cart.php");
            } else{
                header("Location:cart.php?id=".$idUser);
            }
        }
?>