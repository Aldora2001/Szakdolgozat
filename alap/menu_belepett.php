<meta charset = "utf-8">
<div class = "fooldalkep">

	<div class = "navbar-header">
	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	<span class="glyphicon glyphicon-option-vertical"></span>
	</button>
	</div>

	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		<ul class="nav navbar-nav">
			<li><a href="./main"><span>Főoldal</span></a></li>

		<?php
			echo
			'
				<li><a href="./tabla"><span>Tábla</span> </a></li>
				<li><a href="./naptar"><span>Naptár</span> </a></li>
				<li><a href="./email"><span>Email</span> </a></li>
			'
		?>

		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li>
				<a href="" id = "logoutgomb" class = "belepettfelh" ><span class="glyphicon glyphicon-log-out"></span>
					<?php
						print ''.$_SESSION["login_nev"].'</span>';
					?>
				</a>
			</li>
		</ul>
	</div>
	<div class="bevezeto">
		<p>Kedves Felhasználó!</p>
		<br>
		<p>Üdvözöllek a Scrum alapú alkalmazásban! :)</p>
		<br>
		<p>Ez az alkalmazás a szakdolgozatom révén jött létre, azért, hogy segítse a Scrum módszertant használó csapatokat a mindennapi tevékenységük során.
			A Tábla fül alatt találsz egy táblát, ahova felvezetheted a projekthez szükséges feladatokat.
			A Naptár és az Email fülek még fejlesztés alatt állnak,
			de ettől függetlenül nyugodtan teszteld az oldalt és szívesen várok bármilyen visszajelzést a szakaldori@gmail.com email címen.</p>
		<br>
		<p>Remélem hozzájárulhatok a sikeres együttműködéshez a csapatoddal és a Scrum módszertanra való átálláshoz vagy továbbtanulásához.</p>
		<br>
		<p>Jó szórakozást kívánok az oldal felfedezéséhez!</p>
	</div>
</div>