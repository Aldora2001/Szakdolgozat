<?php
	include "../../alap/kapcsolat.php";
	$bevitel1=$_POST["bevitel1"];	//Cím
	$bevitel2=$_POST["bevitel2"];	//Leírás
	$bevitel3=$_POST["bevitel3"];	//Fájl
	$bevitel4=$_POST["bevitel4"];	//Prio
	$bevitel5=0;					//Nézettség
	$datumido=date("Y-m-d  H:i:s");

	if($bevitel4 == '1')
	{
		$sql = "INSERT INTO kartya VALUES ( NULL, '$bevitel1','$bevitel2','$bevitel3', '$datumido', $bevitel4, 1);";
	}
	else if($bevitel4 == '2')
	{
		$sql = "INSERT INTO kartya VALUES ( NULL, '$bevitel1','$bevitel2','$bevitel3', '$datumido', $bevitel4, 1);";
	}
	else if($bevitel4 == '3')
	{
		$sql = "INSERT INTO kartya VALUES ( NULL, '$bevitel1','$bevitel2','$bevitel3', '$datumido', $bevitel4, 1);";
	}

	$result = mysqli_query($conn, $sql);

	$kimenet=0;
	if ($result)
		$kimenet=1;

	print $kimenet;
	mysqli_close($conn);


?>