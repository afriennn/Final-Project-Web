<?php 
	session_start();

	if( !isset($_SESSION['username']) ) {
		header("Location: index.php");
		exit;
	}

	require 'koneksi.php';

// ambil data dari url
	$id_menu = $_GET["id_menu"];

// query data mhs berdasarkan id_menu
	$menu = query("SELECT * FROM menu WHERE id_menu = '$id_menu'") [0];
	
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
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- title -->
	<title>Menu</title>

	<!-- favicon -->
	<link rel="shortcut icon" type="image/png" href="assets/img/icon.png">
	<!-- google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
	<!-- fontawesome -->
	<link rel="stylesheet" href="assets/css/all.min.css">
	<!-- bootstrap -->
	<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
	<!-- owl carousel -->
	<link rel="stylesheet" href="assets/css/owl.carousel.css">
	<!-- magnific popup -->
	<link rel="stylesheet" href="assets/css/magnific-popup.css">
	<!-- animate css -->
	<link rel="stylesheet" href="assets/css/animate.css">
	<!-- mean menu css -->
	<link rel="stylesheet" href="assets/css/meanmenu.min.css">
	<!-- main style -->
	<link rel="stylesheet" href="assets/css/main.css">
	<!-- responsive -->
	<link rel="stylesheet" href="assets/css/responsive.css">
</head>
<body>
<!-- header -->
   <div class="top-header-area" id="sticker">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-sm-12 text-center">
					<div class="main-menu-wrap">
						<!-- logo -->
						<div class="site-logo">
							<a href="homepage_admin.php">
								<img src="assets/img/kawfee.png" alt="">
							</a>
						</div>
						<!-- menu start -->
						<nav class="main-menu">
							<ul>
								<li><a href="homepage_admin.php">Home</a></li>
								<li class="current-list-item"><a href="shop_admin.php">Menu</a>
									<ul class="sub-menu">
										<li><a href="kategori_admin.php?tag=espresso hot">Espresso Hot</a></li>
										<li><a href="kategori_admin.php?tag=espresso ice">Espresso Ice</a></li>
										<li><a href="kategori_admin.php?tag=frappes">Frappe</a></li>
										<li><a href="kategori_admin.php?tag=non-coffee">Non-coffee</a></li>
										<li><a href="kategori_admin.php?tag=signature">Signature</a></li>
									</ul>
								</li>
								<li><a href="discount.php">Discount</a></li>
								<li><a href="add.php">Tambahkan Data</a></li>
								<li>
									<div class="header-icons">
										<a href="logout.php">Logout</a>
									</div>
								</li>
							</ul>
						</nav>
						<!-- menu end -->
					</div>
				</div>
			</div>
		</div>
	</div>
    <!-- end header -->

	<!-- menu-section -->
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<h1>Menu</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end menu-section -->

	<form action="" method="post" enctype="multipart/form-data">
		<input type="hidden" name="id_menu" value="<?= $menu["id_menu"]; ?>">
		<input type="hidden" name="gambarLama" value="<?= $menu["gambar"]; ?>">
		<ul>
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

	<a href="index.php">Batal</a>

<!-- copyright -->
	<div class="copyright">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-12">
					<p>Copyrights &copy; 2021 - <a href="homepage_admin.php">Final Project - Web</a>,  All Rights Reserved.</p>
				</div>
			</div>
		</div>
	</div>
<!-- end copyright -->

</body>
</html>