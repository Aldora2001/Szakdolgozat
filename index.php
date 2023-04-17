<?php session_start(); ?>
<!DOCTYPE html>
 <html>
<head>
  <meta charset="UTF-8">
  <base href="http://localhost/Szakdolgozat/">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
  <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>

  <script src="https://cdn.quilljs.com/1.2.6/quill.min.js"></script>

  <script src="alap/sajat.js"></script>
  <link rel="stylesheet" type="text/css" href="css/bejelentkezes.css">
  <link rel="stylesheet" type="text/css" href="css/sajat.css">
  <link rel="stylesheet" type="text/css" href="css/naptar.css">
  <link rel="stylesheet" type="text/css" href="css/kanban.css">

<link href="https://fonts.googleapis.com/css?family=Armata" rel="stylesheet">
<link href="https://cdn.quilljs.com/1.2.6/quill.snow.css" rel="stylesheet">

</head>
<body>

<?php
	if((isset($_GET['page']) == 1) && ( $_GET['page'] != "main"))
	{
		if (isset($_SESSION["login_nev"]))
			require "alap/menu_belepett2.php";	//Azért kell, hogy ne a menü legalján nyíljon meg a következő ablak.
		else
			require "alap/menu_nembelepett.html"; //Azért kell, hogy ne a menü legalján nyíljon meg a következő ablak.
	}
?>


<?php
	$page = isset($_GET['page']) ? $_GET['page'] : "main";
	if($page == "") $page = "main";
	
	if(file_exists("pages/" . $page . "/" . $page . ".php"))
		include "pages/" . $page . "/" . $page . ".php";
	else
		include '404.php';
?>
</body>
</html> 