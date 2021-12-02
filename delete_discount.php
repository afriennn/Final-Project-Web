<?php 
	session_start();

	if( !isset($_SESSION['username']) ) {
		header("Location: index.php");
		exit;
	}
	
	require 'koneksi.php';

	$discount = $_GET["discount"];

	mysqli_query($konek, "DELETE FROM discount WHERE discount = '$discount'");

	if( mysqli_affected_rows($konek) > 0 ) {
		echo "
			<script>
				alert('Data Berhasil Dihapus!');
				document.location.href = 'shop_admin.php';
			</script>
		";
	} else {
		echo "
			<script>
				alert('Data Gagal Dihapus!');
				document.location.href = 'shop_admin.php';
			</script>
		";
	}

?>