//= require jquery
//= require jquery_ujs
//= require jquery.turbolinks
//= require turbolinks
//= require_tree .

var blank_check = "入力がありません。"

jQuery( function($) {
    $("#q_accnt_cd_cont").blur(function(){
    	var a = $('input#q_accnt_cd_cont').val();
    	if( a == ""){
    		alert(blank_check);
    	} 
		
	});
});
