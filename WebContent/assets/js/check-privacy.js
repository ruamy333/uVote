$(document).ready(function(){
    $('input[type=radio][name=isPrivacy]').click(function(){
        if($(this).val() == "1"){
        	$('#password').prop('disabled',false);
        }
        else{
        	$('#password').prop('disabled',true);
        }
    });
});