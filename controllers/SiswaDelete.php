<?php
include '../config/config.php';
$idSiswa = $_GET["id"];
$query = "DELETE FROM siswa WHERE id=$idSiswa";
if (mysqli_query($conn, $query)) {
    echo "<script>alert('Delete Data Berhasil'); document.location.href = '../starter.php';</script>";
} else {
    echo "Error deleting record: " . mysqli_error($conn);
}
mysqli_close($conn);
