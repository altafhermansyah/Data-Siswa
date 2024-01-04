<?php
include '../config/config.php';
if (isset($_POST['save'])) {
    $nis = $_POST['nis'];
    $nama = $_POST['nama'];
    $birth = $_POST['birth'];
    $gender = $_POST['gender'];
    $alamat = $_POST['alamat'];
    $insert = "INSERT INTO siswa VALUES (null,'$nis','$nama','$birth','$gender','$alamat')";
    if (mysqli_query($conn, $insert)) {
        echo "<script>alert('Tambah Data Berhasil'); document.location.href = '../starter.php';</script>";
    } else {
        echo "Error: " . $insert . "
" . mysqli_error($conn);
    }
    mysqli_close($conn);
}
