<?php 
	session_start();

	if( !isset($_SESSION['login']) ) {
		header("Location: login.php");
		exit;
	}
	
	require 'koneksi.php';

	$id_menu = $_GET["id_menu"];

	mysqli_query($konek, "DELETE FROM best_seller WHERE id_menu = '$id_menu'");

	if( mysqli_affected_rows($konek) > 0 ) {
		echo "
			<script>
				alert('data berhasil dihapus!');
			</script>
		";
		header("Location: shop.php");
	} else {
		echo "
			<script>
				alert('data gagal dihapus!');
			</script>
		";
		header("Location: shop.php");
	}

?>