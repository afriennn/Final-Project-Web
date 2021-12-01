<?php 
	session_start();

	if( !isset($_SESSION['username']) ) {
		header("Location: login.php");
		exit;
	}

	require 'functions.php';

// ambil data di url
	$id = $_GET["id_menu"];
// query data mhs berdasarkan id menu
	$menu = query("SELECT * FROM menu WHERE id_menu = '$id'") [0];
// mengecek apakah data berhasil diubah
	if( isset($_POST["submit"]) ) {
		if( ubah($_POST) > 0){
			echo "
				<script>
					alert('Data Berhasil Diubah!');
					document.location.href = 'shop_admin.php';
				</script>
			";
		} else {
			echo "
				<script>
					alert('Data Gagal Diubah!');
					document.location.href = 'shop_admin.php';
				</script>
			";
		}
	}
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ubah data</title>
</head>
<body>
	<form action="" method="post" enctype="multipart/form-data">
		<input type="hidden" name="id_menu" value="<?= $menu["id_menu"]; ?>">
		<input type="hidden" name="gambarLama" value="<?= $menu["gambar"]; ?>">
		<ul>
			<li>
				<label for="id_menu">id_menu : </label>
				<input type="text" name="id_menu" disabld required value="<?= $menu["id_menu"]; ?>">
			</li>
			<li>
				<label for="nama">Nama : </label>
				<input type="text" name="nama" required value="<?= $menu["nama"]; ?>">
			</li>
			<li>
				<label for="harga">Harga : </label>
				<input type="text" name="harga" required value="<?= $menu["harga"]; ?>">
			</li>
			<li>
				<label for="kategori">Kategori : </label>
				<input type="text" name="kategori" required value="<?= $menu["kategori"]; ?>">
			</li>
			<li>
				<label for="gambar">Gambar :</label><br><br>
				<img src="img/<?= $menu['gambar']; ?>" width="50"><br><br>
				<input type="file" name="gambar" id="gambar">
			</li>
			<li>
				<button type="submit" name="submit">Ubah Data!</button>
			</li>
		</ul>
	</form>

</body>
</html>