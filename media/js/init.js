$(document).ready(function(){
    $("textarea").wysiwyg();
    $("div.wysiwyg").css("padding", "3px 1px");
	
	//$("#content-wrapper").css("height", $("#content-wrapper").height());
    $("#menu-v .category ul").css("display", "none");
    $("#menu-v .category span").click(function() {
	    $("#mail").css('position','relative');
        $("ul", $(this).parent()).toggle();//("fast");
        $("#mail").css('position','absolute');  
    });
    

	var passwd = $('#id_password', '#login-block'), 
	    passwdtmp = $('#id_passwd_temp', '#login-block'),
	    login = $('#id_username', '#login-block');
    var login_text = login.attr('value');
    var toggle = function(){
		$.each([passwd, passwdtmp], function(i, val){
			val.toggle();
		});
	};
	toggle();
	passwdtmp.focus(function() {
        toggle();
    	passwd.focus();
	});
	passwd.blur(function() {
		if(passwd.attr('value') == '')
            toggle();
    });
	
    login.focus(function () {
        if (login.attr('value') == login_text)
            login.attr('value', '');
    });
    login.blur(function () {
        if (login.attr('value') == '')
            login.attr('value', login_text);
    });
	
    var login_form = $("#login-form", "#login-block"),
        login_caller = $("#login-caller", "#login-block"),
		mail_caller = $("#mail-caller", "#login-block"),
		mail_form = $("#mail-form", "#login-block");
    login_form.toggle();
    login_caller.toggle();
    
	function hideForm(form) {
        if (form.css('display') != 'none')
            form.toggle();
	};
	
	$("#login-caller").click(function() {
		hideForm(mail_form);
        login_form.slideToggle('fast');
    });
    mail_caller.toggle();
	mail_form.toggle();
	$("#mail-caller").click(function() {
        hideForm(login_form);
        mail_form.slideToggle('fast');
	});

    /* init corners 
    $(".rounded").corner("5px");
    $(".rounded-right").corner("5px right");
    $(".rounded-left").corner("5px left");

    
    $("#mail-hidden").css("display", "none");
    $("#mail-enter").click(function() {
        $("#mail-hidden").slideToggle("slow");
        $(".rounded-left").corner("5px left");
    });*/

});
