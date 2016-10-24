require.config(requireConfig);
define(['jquery'
    ],
    function($) {
	$('#username').val('jack');
	$('#password').val('123456');
})



var btnClick=function(){
		var username=$('#username').val();
		var password=$('#password').val();
		alert("username is :"+username+" and password is:"+password);
		
	}