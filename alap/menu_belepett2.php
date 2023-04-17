<meta charset = "utf-8">
<div class = "navbar-header">
	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
		<span class="glyphicon glyphicon-option-vertical"></span>
	</button>

	</div>
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	<ul class="nav navbar-nav navbar">
		<li class="nav-item active">
			<li><a href="./main"><span>Főoldal</span></a></li>

			<?php
					echo'
						<li><a href="./tabla"><span>Tábla</span> </a></li>
						<li><a href="./naptar"><span>Naptár</span> </a></li>
						<li><a href="./email"><span>Email</span> </a></li>
						<li><a href="./cikkfelvitel"><span>Kártya hozzáadás</span> </a></li>
						'
			?>

	</ul>
	<ul class="nav navbar-nav navbar-right">
		<li>
			<a href="" id = "logoutgomb"><span class="glyphicon glyphicon-log-out"></span>
				<?php
					print $_SESSION["login_nev"].'</span>';
				?>
			</a>
		</li>
	</ul>
</div>