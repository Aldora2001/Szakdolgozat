$(document).ready(function(){
    
 $("#levelkuldesgomb").click(function(){
	 //alert("kuld");
$.post("pages/levelkuldes/emailkuld.php",function(eredmeny, status){
		alert(eredmeny);
	});
		});
});	