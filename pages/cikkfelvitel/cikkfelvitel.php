<?php
if (isset($_SESSION["login_nev"]))
{
?>
<div class = "container" id = "felvitelcontainer">
  <div class="col-sm-12"></div>

   <div class="row" id="felvitel">
  <div class="col-sm-4">Feladat címe:</div>
  <div class="col-sm-8"> <input type="text" id="bevitel1" class="felvitelszovegmezo"><br><span id="hiba1" class="hibaszoveg" >&nbsp;</span></div>
</div>

<div class="row" id="felvitel">
  <div class="col-sm-4">Feladat leírása:</div>
  <div class="col-sm-8"><textarea id="bevitel2" class="felvitelszovegmezo" style="height: 100px;"></textarea><br><span id="hiba2" class="hibaszoveg" >&nbsp;</span></div>
</div>


<div class="row" id="felvitel">
	<div class="col-sm-4">Feladat prioritása:</div>
	<div class="col-sm-8">
		<select id="bevitel4" class = "felvitelselect">
			<option value="">--Válassz egy színt--</option>
			<option value="1">Piros</option>
			<option value="2">Kék</option>
			<option value="3">Zöld</option>
		</select>
	</div>
</div>

<input type="file" id="bevitel3" name="bevitel3">
  <input type="submit" value="Adatok felvitele" id="gomb">

  <div id="siker"></div></div>
  <div class="col-sm-4"></div>
</div>
<script src="pages/cikkfelvitel/cikkfelvitel.js"></script>

<?php
}
else
	echo "Hozzáférés megtagadva...";
?>
</body>
</html>