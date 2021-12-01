<?php 
// koneksi
    $host       = "localhost";
    $username   = "root";
    $password   = "";
    $database   = "project2";
     
    $konek = new mysqli($host, $username, $password, $database);

// fungsi untuk mengambil isi database dan memasukkan ke dalam variable
	function query($query){
		global $konek;

		$result = mysqli_query($konek, $query);

	// membuat array rows untuk menampung isi database
		$rows = []; 

	// memasukkan isi database satu-persatu ke dalam array rows
		while($row = mysqli_fetch_assoc($result)){
			$rows[] = $row; 
		}
		return $rows;
	}

// fungsi upload
	function upload(){
		$namaFile = $_FILES['gambar']['name'];
		$ukuranFile = $_FILES['gambar']['size'];
		$error = $_FILES['gambar']['error'];
		$tmpName = $_FILES['gambar']['tmp_name'];

	// cek apakah ada gambar yang diupload
		if($error === 4){
			echo "
				<script>
					alert('Gambar Belum Diinput!');
					document.location.href = 'add.php';
				</script>
			";
			return false;
		}

	// cek apakah yang diupload adalah gambar
		$ekstensiGambarValid = ['jpg', 'jpeg', 'png'];
		$ekstensiGambar = explode('.', $namaFile);
		$ekstensiGambar = strtolower(end($ekstensiGambar));

	// adakah sebuah string dalam sebuah array 
		if( !in_array($ekstensiGambar, $ekstensiGambarValid) ) {
			echo "
				<script>
					alert('Yang Anda Upload Bukan Gambar!');
					document.location.href = 'add.php';
				</script>
			";
			return false;
		}

	// generate nama gambar baru
		$namaFileBaru = uniqid();
		$namaFileBaru .= '.';
		$namaFileBaru .= $ekstensiGambar;

	// lolos pengecekan, gambar siap diupload
		move_uploaded_file($tmpName, 'img/' . $namaFileBaru);
		return $namaFileBaru;
	}

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