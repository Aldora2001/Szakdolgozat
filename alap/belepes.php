 <?php
 session_start();
include "kapcsolat.php";
$email=$_POST["felhasznalonev"];
$jelszo=md5($_POST["jelszo"]);

$sql = "SELECT * FROM felhasznalok
where felhasznalo_email='$email' and
felhasznalo_jelszo='$jelszo'";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    // output data of each row
   $row = mysqli_fetch_assoc($result);
   $_SESSION["login_id"]=$row["felhasznalo_id"];
   $_SESSION["login_nev"]=$row["felhasznalo_email"];
   print 1;
} else {
   print 0;
}

mysqli_close($conn);
?>