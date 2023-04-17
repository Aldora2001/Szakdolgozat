<?php
session_start();
include "../../alap/kapcsolat.php";

$bevitel1=$_POST['bevitel1'];

$sql = "SELECT * FROM kartya where feladat_id = $bevitel1";
$result = mysqli_query($conn, $sql);

$kimenet=array();

if (mysqli_num_rows($result) > 0) {
    // output data of each row
    while($row = mysqli_fetch_assoc($result)) {

		array_push($kimenet,$row);
	}
	print json_encode($kimenet);
} else {
    print 0;
}

mysqli_close($conn);
?>