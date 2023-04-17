<?php
	if (isset($_SESSION["login_nev"]))
		include "alap/menu_belepett.php";
	else
		include "alap/menu_nembelepett.html";
?>