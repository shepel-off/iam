/* init navigation */
$(document).ready(function(){
    $("#sidebar").treeview({
        animated: "normal",
        collapsed: false,
        persist: "location"
    });
});

function processJson(data)
{
    if(data.errors)
    {
        var cont = $('#fancybox-inner').contents(), err;
        err = cont.find('#errors');
        if(!err.size())
            cont.find('#the-login-form').before('<ul id="errors"><li style="text-align: center;"><img src="/img/icons/error.png" />' + data.msg + '<img src="/img/icons/error.png" /></li></ul>');
        else
        {
            err.empty();
            err.append('<li style="text-align: center;"><img src="/img/icons/error.png" />' + data.msg + '<img src="/img/icons/error.png" /></li></ul>');
        }   
        $.fancybox.resize();
        $.fancybox.center();
    }
    else
    {
        $.fancybox.close();
        window.location.reload()
    }
}

/* init fancybox */
$(document).ready(function(){
    $("a.popup").fancybox(
    {
        'centerOnScroll'    : true,
        'showCloseButton'   : false,
        'scrolling'         : 'no',
        'onComplete'        : function()
        {
            //$('#fancybox-inner').contents().find('div').css('font-size', '20pt');
            //$('#fancybox-inner').contents().find(':submit').click(function() { $.fancybox.close(); });
            $('head').append($('#fancybox-inner').contents().find('script'))
            $.fancybox.resize();
            $.fancybox.center();
        }              
    });
    $("a.popup[name='login']").fancybox(
    {
        'centerOnScroll'    : true,
        'showCloseButton'   : false,
        'scrolling'         : 'no',
        'onComplete'        : function() 
        {
            /* need to load stylesheets explicitly */
            sh = $('#fancybox-outer').contents().find('link')
            /*alert(sh.attr('href'))
            newsh = document.createElement('link');
            newsh.type = "text/css";
            newsh.rel = "stylesheet";
            newsh.href = sh.attr('href');*/
            $('head').append(sh);
            $('#the-login-form').ajaxForm(
            {
                dataType:  'json',
                success:   processJson
            });
            $('head').append($('#fancybox-inner').contents().find('script'))
            $.fancybox.resize();
            $.fancybox.center();
        }              
    });

});

/* init corners */
$(document).ready(function()
{
    $(".rounded").corner("5px");
});
