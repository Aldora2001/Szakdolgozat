$(document).ready(function()
{
	frissit();
	function frissit()
	{
		$.post("pages/tabla/lekerdez.php", function(data, status)
		{
			var tomb=JSON.parse(data);
			var szoveg="";

			szoveg+='<div class="row">';
				szoveg+='<div class="column">';
					szoveg+='<div class="card">';
						szoveg+='<h3>Teendő</h3>';
						for (var i=0;i<tomb.length;i++)
						{
							if(tomb[i].feladat_status == 1)
							{
								szoveg+='<div class="card" id = "belso">';
									szoveg+='<img src="kepek/'+tomb[i].feladat_fajl+'" class="responsive">';
									szoveg+='<br><div class="feladatcim">'+tomb[i].feladat_cim+'</div>';
									szoveg+='<a id="'+tomb[i].feladat_id+'"data-toggle="modal" data-target="#myModal" style = "cursor: pointer" class = "readmore">Részletek</a><br>';
									szoveg+='<div class="datum">'+tomb[i].feladat_datum+'</div>';
									szoveg+='<div class="athelyezes">';
										szoveg+='<td><button type="button" value = "2" id='+tomb[i].feladat_id+' class="gomb">Folyamatban</button></td>';
										szoveg+='<td><button type="button" value = "3" id='+tomb[i].feladat_id+' class="gomb">Teszt</button></td>';
										szoveg+='<td><button type="button" value = "4" id='+tomb[i].feladat_id+' class="gomb">Kész</button></td>';
									szoveg+='</div>';
									szoveg+='<div class="kuka"><button type="button" id="'+tomb[i].feladat_id+'" class="torles"><span class = "glyphicon glyphicon-trash"></span></button></div>';
								szoveg+='</div>';
								szoveg+='<br>';
							}
						}
					szoveg+='</div>';
				szoveg+='</div>';

				szoveg+='<div class="column">';
					szoveg+='<div class="card">';
						szoveg+='<h3>Folyamatban</h3>';
						for (var i=0;i<tomb.length;i++)
						{
							if(tomb[i].feladat_status == 2)
							{
								szoveg+='<div class="card" id = "belso">';
									szoveg+='<img src="kepek/'+tomb[i].feladat_fajl+'" class="responsive">';
									szoveg+='<br><div class="feladatcim">'+tomb[i].feladat_cim+'</div>';
									szoveg+='<a id="'+tomb[i].feladat_id+'"data-toggle="modal" data-target="#myModal" style = "cursor: pointer" class = "readmore">Részletek</a><br>';
									szoveg+='<div class="datum">'+tomb[i].feladat_datum+'</div>';
									szoveg+='<div class="athelyezes">';
										szoveg+='<td><button type="button" value = "1" id='+tomb[i].feladat_id+' class="gomb">Teendő</button></td>';
										szoveg+='<td><button type="button" value = "3" id='+tomb[i].feladat_id+' class="gomb">Teszt</button></td>';
										szoveg+='<td><button type="button" value = "4" id='+tomb[i].feladat_id+' class="gomb">Kész</button></td>';
									szoveg+='</div>';
									szoveg+='<div class="kuka"><button type="button" id="'+tomb[i].feladat_id+'" class="torles"><span class = "glyphicon glyphicon-trash"></span></button></div>';
								szoveg+='</div>';
								szoveg+='<br>';
							}
						}
					szoveg+='</div>';
				szoveg+='</div>';

				szoveg+='<div class="column">';
					szoveg+='<div class="card">';
						szoveg+='<h3>Teszt</h3>';
						for (var i=0;i<tomb.length;i++)
						{
							if(tomb[i].feladat_status == 3)
							{
								szoveg+='<div class="card" id = "belso">';
									szoveg+='<img src="kepek/'+tomb[i].feladat_fajl+'" class="responsive">';
									szoveg+='<br><div class="feladatcim">'+tomb[i].feladat_cim+'</div>';
									szoveg+='<a id="'+tomb[i].feladat_id+'"data-toggle="modal" data-target="#myModal" style = "cursor: pointer" class = "readmore">Részletek</a><br>';
									szoveg+='<div class="datum">'+tomb[i].feladat_datum+'</div>';
									szoveg+='<div class="athelyezes">';
										szoveg+='<td><button type="button" value = "1" id='+tomb[i].feladat_id+' class="gomb">Teendő</button></td>';
										szoveg+='<td><button type="button" value = "2" id='+tomb[i].feladat_id+' class="gomb">Folyamatban</button></td>';
										szoveg+='<td><button type="button" value = "4" id='+tomb[i].feladat_id+' class="gomb">Kész</button></td>';
									szoveg+='</div>';
									szoveg+='<div class="kuka"><button type="button" id="'+tomb[i].feladat_id+'" class="torles"><span class = "glyphicon glyphicon-trash"></span></button></div>';
								szoveg+='</div>';
								szoveg+='<br>';
							}
						}
					szoveg+='</div>';
				szoveg+='</div>';

				szoveg+='<div class="column">';
					szoveg+='<div class="card">';
						szoveg+='<h3>Kész</h3>';
						for (var i=0;i<tomb.length;i++)
						{
							if(tomb[i].feladat_status == 4)
							{
								szoveg+='<div class="card" id = "belso">';
									szoveg+='<img src="kepek/'+tomb[i].feladat_fajl+'" class="responsive">';
									szoveg+='<br><div class="feladatcim">'+tomb[i].feladat_cim+'</div>';
									szoveg+='<a id="'+tomb[i].feladat_id+'"data-toggle="modal" data-target="#myModal" style = "cursor: pointer" class = "readmore">Részletek</a><br>';
									szoveg+='<div class="datum">'+tomb[i].feladat_datum+'</div>';
									szoveg+='<div class="athelyezes">';
										szoveg+='<td><button type="button" value = "1" id='+tomb[i].feladat_id+' class="gomb">Teendő</button></td>';
										szoveg+='<td><button type="button" value = "2" id='+tomb[i].feladat_id+' class="gomb">Folyamatban</button></td>';
										szoveg+='<td><button type="button" value = "3" id='+tomb[i].feladat_id+' class="gomb">Teszt</button></td>';
									szoveg+='</div>';
									szoveg+='<div class="kuka"><button type="button" id="'+tomb[i].feladat_id+'" class="torles"><span class = "glyphicon glyphicon-trash"></span></button></div>';
								szoveg+='</div>';
								szoveg+='<br>';
							}
						}
					szoveg+='</div>';
				szoveg+='</div>';
			szoveg+='</div>';

			szoveg+='<div id="modalishelye"></div>';

			$("#tablazat").html(szoveg);

			$(".gomb").click(function()
			{
				var clicked = $(this).val();
				clicked = parseInt(clicked);
				//alert(fired_button)

				var tadatok=
				{
					gomb:this.id,
					megnyomott:clicked
				}

				$.post("pages/tabla/kartyamozgatas.php",tadatok, function(data)
				{
					frissit();
				});
			});

			$(".torles").click(function()
			{
				var tadatok=
				{
					torles:this.id
				}
				$.post("pages/tabla/kartyatorles.php",tadatok, function(data)
				{
					frissit();
				});
			});

			$("#modalishelye").load("pages/tabla/modalis.html");

			$(".readmore").click(function()
			{
				var adatok=
				{
					bevitel1:this.id
				}

				$.post("pages/tabla/lekerdez_decsakegy.php", adatok, function(eredmeny)
				{
					var tomb=JSON.parse(eredmeny);
					var modalisszoveg="";
					modalisszoveg+=tomb[0].feladat_leirasa;

					$("#modalistartalma").html(modalisszoveg);
				});
			});
		});
	};
});