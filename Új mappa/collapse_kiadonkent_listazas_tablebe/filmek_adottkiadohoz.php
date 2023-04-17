<?php
//echo "hello";
include("../kapcsolat.php");

$bevitel1=$_POST["bevitel1"];

$sql="SELECT * FROM film where film_kiado=$bevitel1";
$result = mysqli_query($conn, $sql);

$kimenet=array();

if (mysqli_num_rows($result) > 0) {
    // output data of each row
    while($row = mysqli_fetch_assoc($result)) {
       
	   array_push($kimenet,$row);
		
	}
	
	echo json_encode($kimenet);
	
	}
	else {
    echo 0;
}

mysqli_close($conn);
 







?>