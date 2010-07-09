/* init navigation */
$(document).ready(function(){
	$("#sidebar").treeview({
        animated: "normal",
        collapsed: false,
        persist: "location"
	});
});

/* init fancybox */
$(document).ready(function(){
    $("a.popup").fancybox({
        'centerOnScroll'    : true,
        'showCloseButton'   : false,
        'scrolling'         : 'no',
        'onComplete'        : function() {
            $('#fancybox-frame').contents().find('body').css('margin', '0');
            $('#fancybox-frame').contents().find(':submit').click(function() { $.fancybox.close(); });
            $('head').append($('#fancybox-frame').contents().find('script'))
            $.fancybox.resize();
            $.fancybox.center();
        }              
    });
});
