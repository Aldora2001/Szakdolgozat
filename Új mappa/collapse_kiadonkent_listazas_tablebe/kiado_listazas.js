$(document).ready(function(){
    
	$.post("kiadok2/kiado_listazas.php", function(eredmeny){
        //alert(eredmeny);
		var tablazat="";
		if (eredmeny==0)
			tablazat="Nincsenek adatok...";
		else
			{
			var tomb=$.parseJSON(eredmeny);
			
			//tablazat+="Csak az elso: "+tomb[0].film_cim;
			tablazat+=' <table class="table table-hover">';
			tablazat+='<thead><tr>';
			tablazat+='<th>Kiadó neve</th>';
           	tablazat+='<th>Kép</th>';
			tablazat+='</tr> </thead><tbody>';
			
			
			for (var i=0;i<tomb.length;i++)
			{
			tablazat+='<tr>';
			tablazat+='<td>'+tomb[i].kiado_nev+'</td>';
			tablazat+='<td><img src="kepek/'+tomb[i].kiado_kep+'" style="width:50px"></td>';
			
			tablazat+='<td><button id="ezlink_'+tomb[i].kiado_id+'"  class="reszletek" type="button"  data-toggle="collapse" data-target="#demo_'+tomb[i].kiado_id+'">Simple collapsible</button></td>';
			tablazat+='</tr>';
			tablazat+='<tr><td colspan="3">';
			tablazat+='<div id="demo_'+tomb[i].kiado_id+'" class="collapse"> Lorem ipsum </div>';
			tablazat+='<td><tr>';
			
			
			tablazat+='</tr>';
			}
	 
	 
			tablazat+='</tbody></table>';
			
			
			
			
			}
		
		$("#tablazathelye").html(tablazat);	
		
		$(".reszletek").click(function(){
			//alert(this.id);
			var z=this.id.split('_');
			var adatok=
			{
				bevitel1:z[1]
			}
			$.post("kiadok2/filmek_adottkiadohoz.php",adatok,function(eredmeny2){
				//alert(eredmeny2);
				
				
				var tomb2=$.parseJSON(eredmeny2);
			
			var tablazat2="";
			tablazat2+=' <table class="table table-hover">';
			tablazat2+='<thead><tr>';
			tablazat2+='<th>Film címe</th>';
           	tablazat2+='<th>Év</th>';
			tablazat2+='</tr> </thead><tbody>';
			
			
			for (var i=0;i<tomb2.length;i++)
			{
			tablazat2+='<tr>';
			tablazat2+='<td>'+tomb2[i].film_cim+'</td>';
			tablazat2+='<td>'+tomb2[i].film_ev+'</td>';
			
			tablazat2+='</tr>';
			}
	 
	 
			tablazat2+='</tbody></table>';
			
			$("#demo_"+z[1]).html(tablazat2);	
				
				
				
			});
			
			
			
			
		});
		
		
		
		
		
		
    });
	
	
	
	
	
});