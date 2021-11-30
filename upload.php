<?php
	include 'koneksi.php';
	
	if(isset($_POST['upload'])){
		$filename = $_FILES['file']['name'];
		$filetmpname = $_FILES['file']['tmp_name'];
		$folder = 'menupictbestseller/';
		$nama = $_POST['nama'];
		$harga = $_POST['harga'];
		$kategori = $_POST['kategori'];
		move_uploaded_file($filetmpname, $folder.$filename);
	
		$sql = "INSERT INTO best_seller VALUES('','$nama','$harga','$kategori','$filename')";

		$query = mysqli_query($konek, $sql);

		if($query){
			echo "Image uploaded";
		}
	}
	
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>wewewe</title>
</head>
<body>
	<form action="upload.php" method="post" enctype="multipart/form-data">
		<input type="file" name="file">
		<input type="text" name="nama" placeholder="nama menu">
		<input type="text" name="harga" placeholder="harga menu">
		<input type="text" name="kategori" placeholder="kategori menu">
		<input type="submit" name="upload" value="Upload">
	</form>
</body>
</html>