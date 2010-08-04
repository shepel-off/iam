$(document).ready(function(){
    $("textarea").wysiwyg();
    $("div.wysiwyg").css("padding", "3px 1px");
	
    $("#menu-v .category ul").css("display", "none");
    $("#menu-v .category span").click(function() {
        $("ul", $(this).parent()).toggle();
    });
    
	function initHiddenForm(name, freeSide)
	{
        var caller = $("#" + name + "-caller", "#login-block");
        var form = $("#" + name + "-form", "#login-block");
        var link = $("#" + name + "-link", "#login-block");
		
		form.corner("5px bottom " + freeSide);
        caller.show();
        link.hide();
		form.parent().height();

        caller.click(function() {
            $(".hyperlink", "#login-block").not(caller).each(function (i, elm) {
                if ($(elm).hasClass('tab-head'))
                    $(elm).click();
            })
	    });
    		
        caller.toggle(function() {
            caller.addClass('tab-head').corner("5px top");
			form.show();
        }, function() {
            form.hide(0, function() {
    			caller.removeClass('tab-head').uncorner();
            });
	    });
    	return initHiddenForm;
	}
	
	initHiddenForm('login', 'right')('mail', 'left');

    $('.rounded').corner("5px");
});
