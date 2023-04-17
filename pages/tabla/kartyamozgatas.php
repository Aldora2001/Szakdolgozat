<?php
session_start();
include "../../alap/kapcsolat.php";

if(isset($_SESSION["login_id"]))
{
$megnyomott = $_POST["megnyomott"];
$gomb = $_POST["gomb"]; //A $gomb helyi változó, viszont a "gomb" pedig az előző post-tól kapott érték.
$szemely_id = $_SESSION["login_id"];

$sql = "UPDATE kartya
SET feladat_status = $megnyomott
where feladat_id = $gomb";
$result = mysqli_query($conn, $sql);

if ($result)
	$kimenet=1;
else
	$kimenet=0;

print $kimenet;
mysqli_close($conn);
}
?>