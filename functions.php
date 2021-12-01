<?php 
// koneksi
    $host       = "localhost";
    $username   = "root";
    $password   = "";
    $database   = "project2";
     
    $konek = new mysqli($host, $username, $password, $database);

// fungsi ubah
	function ubah($data){
		global $konek;
		$nama = htmlspecialchars($data["nama"]);
		$gambarLama = htmlspecialchars($data["gambarLama"]);
		$kategori = htmlspecialchars($data["kategori"]);
		$harga = htmlspecialchars($data["harga"]);

	// cek apakah user memilih gambar baru atau tidak
		if($_FILES['gambar']['error'] === 4){
			$gambar = $gambarLama;
		}else{
			$gambar = upload();
		}

	// query update menu
		$query = "UPDATE menu SET
			 nama = '$nama',
			 gambar = '$gambar',
			 kategori = '$kategori',
			 harga = '$harga'
			WHERE id = $id;				
		";
		mysqli_query($konek, $query);

		return mysqli_affected_rows($konek);
	}

// fungsi cari
	function cari($keyboard){
		$query = "SELECT * FROM menu WHERE
			nama LIKE '%$keyword%'
		";
	return query($query);
	}
?>