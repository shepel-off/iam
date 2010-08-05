$(document).ready(function(){
    // Initialize WYSIWYG Editors
	$("textarea").wysiwyg();
    $("div.wysiwyg").css("padding", "3px 1px");
	
	// Simple "Tree"-like menu
	var menu_root = $('#menu-v', '#menu-v-wrapper');
	var root_url = /(http:\/\/[^\/]+)/.exec(window.location)[1];
    $(".category ul", menu_root).css("display", "none");
    $(".category span", menu_root).click(function() {
        $("ul", $(this).parent()).toggle();
    });
    $('a', menu_root).each(function(i, ch) {
		  var href = ($(ch).attr('href')[0] == '/' ? root_url : '') + $(ch).attr('href');
          if (href == window.location) {
		  	$(ch).parentsUntil('#menu-v').css("display", "block");
		  	$(ch).addClass('current-location');
		  }
	});

	// Initialization for Tabed authentication forms (login, mail)
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
    $('.rounded-with-border').corner("5px").parent().css('padding', '1px').corner('round 6px');
});
