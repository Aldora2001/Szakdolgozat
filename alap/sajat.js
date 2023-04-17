$(document).ready(function(){
$.post("pages/keresek/lekerdez_marlatta.php",function(eredmeny){
	//alert(eredmeny);
	var tomb=JSON.parse(eredmeny);
	$("#piciszam").html(tomb[0].db);
});

$("#logingomb").keypress(function (e) {
  if (e.which == 13) {
          $("#logingomb").click();
  }
        });	
$("[name='pass']").keypress(function (e) {
  if (e.which == 13) {
          $("#logingomb").click();
		  
  }
        });	

$("#registergomb").keypress(function (e) {
  if (e.which == 13) {
          $("#registergomb").click();
		  alert('message');
  }
        });

$("#reg_jelszo_megegyszer").keypress(function (e) {
  if (e.which == 13) {
          $("#registergomb").click();
  }
        });	
		
	 $("#registergomb").click(function(){
		 //alert("ok");
		 
		 var patt = /\d/;
		 //alert(patt.test($("#reg_felh").val())); 


		 var hibaszoveg="";
		 if ($("#reg_felh").val()=="")
			 hibaszoveg="A felhasználónév mező üres.";
		 else if ($("#reg_felh").val().length<5)
			 hibaszoveg="A felhasználónév minimum 5 karakter.";
		 else if ($("#reg_jelszo").val()=="")
			 hibaszoveg="A jelszó mező üres.";
		 else if ($("#reg_jelszo").val().length<5)
			 hibaszoveg="A jelszó minimum 5 karakter.";
		 else if (!patt.test($("#reg_jelszo").val()))
			 hibaszoveg="A jelszóban kötelező számot megadni.";
		 
		 $("#hibaszoveg").html(hibaszoveg);
		 if (hibaszoveg=="")
		 {
		 var adatok=
		 {
			 reg_felh:$("#reg_felh").val(),
			 reg_jelszo:$("#reg_jelszo").val()
		 }
		 $.post("alap/felhasznalo_felvitel.php",adatok,function(eredmeny){
			//alert(eredmeny); 
			if (eredmeny==1)
			{
				alert("A regisztráció sikerült, kérem jelentkezzen be.");
				$("#register-modal").modal("hide");
				$("#login-modal").modal();
			}
			else if (eredmeny==2)
			{
				alert("A felhasználónév már létezik.");
			}
			else alert("A felvitelben hiba történt.");
			
		 });
		 }
		 
	 });
	
	 $("#reg").click(function(){
		 
		 $("#login-modal").modal("hide");
		 $("#register-modal").modal();
		 return false;
	 });
	
	
	  $("#logoutgomb").click(function(){
        //alert("megnyomva");
		$.post("alap/kilepes.php",function(eredmeny){
			if (eredmeny==1)
				location.reload();
		});
		
	  });
		
    $("#logingomb").click(function(){
        //alert("megnyomva");
		var adatok=
		{
			felhasznalonev:$("[name='user']").val(),
			jelszo:$("[name='pass']").val(),
		}
		//alert(adatok.felhasznalonev+" "+adatok.jelszo);
		$.post("alap/belepes.php",adatok,function(eredmeny){
			//alert(eredmeny);
			if (eredmeny==0)
				alert("Hiba");
			else
			{
				$("#login-modal").hide();
				location.reload(true);
			}
			
		});
		
    });
});