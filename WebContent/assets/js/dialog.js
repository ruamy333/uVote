var pass;
 function showDia(psd)
{
	pass = psd;
	$( "#dialog" ).dialog( "open" );
};
function checkPassword(psd)
{
	alert(psd);
	if(pass = psd)
		alert('HAHAHA');
};
$(function()
	{
		$( "#dialog" ).dialog(
			{
				autoOpen: false,
				modal: true,
				show:
				{
					effect: "blind",
					duration: 1000
				},
				hide:
				{
					effect: "explode",
					duration: 1000
				}
			});
	});