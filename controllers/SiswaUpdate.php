<?php
include '../config/config.php';
if (isset($_POST['save'])) {
    $id = $_POST['id'];
    $nis = $_POST['nis'];
    $nama = $_POST['nama'];
    $birth = $_POST['birth'];
    $gender = $_POST['gender'];
    $alamat = $_POST['alamat'];

    $query = "UPDATE siswa SET nis = '$nis', nama = '$nama', birth = '$birth', gender = '$gender', alamat = '$alamat' WHERE id=$id";

    $exe = mysqli_query($conn, $query);
    if ($exe) {
        echo "<script>alert('Ubah Data Berhasil'); document.location.href = '../starter.php';</script>";
    } else {
        echo "Error: " . $query . "
" . mysqli_error($conn);
    }
}
