<?php
session_start();
include "../../alap/kapcsolat.php"; 

if(isset($_SESSION["login_id"]))
{ 
$torles = $_POST["torles"];
$szemely_id = $_SESSION["login_id"];


$sql = "DELETE FROM kartya WHERE feladat_id=$torles";
$result = mysqli_query($conn, $sql);

if ($result)
	$kimenet=1;
else
	$kimenet=0;

print $kimenet;
mysqli_close($conn);
}
?>