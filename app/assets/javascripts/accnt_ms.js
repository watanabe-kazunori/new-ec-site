//= require jquery
//= require jquery_ujs
//= require jquery.turbolinks
//= require turbolinks
//= require_tree .

var blank_check = "入力がありません。"
var count_check = "字以上の入力があります。"

jQuery( function($) {
    $("#accnt_m_accnt_cd").blur(function(){
    	var a = $('#accnt_m_accnt_cd').val();
    	var b = $('#accnt_m_accnt_cd').
    	if( a == ""){
    		alert(blank_check);
    	} 

    	if (a.length >= 30) {
    		alert(count_check);
    	} 
		
	});
});
