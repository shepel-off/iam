_params = {};

function processJson(data)
{
    if(data.errors)
    {
        var cont = $('#cboxLoadedContent').contents(), err;
        err = cont.find('#errors');
        if(!err.size())
            cont.find('#the-login-form').before('<ul id="errors"><li style="text-align: center;"><img src="/img/icons/error.png" />' + data.msg + '<img src="/img/icons/error.png" /></li></ul>');
        else
        {
            err.empty();
            err.append('<li style="text-align: center;"><img src="/img/icons/error.png" />' + data.msg + '<img src="/img/icons/error.png" /></li></ul>');
        }   
        $.colorbox.resize();
        $.colorbox.resize();
    }
    else
    {
        $.colorbox.close();
        alert("next" in _params);
            //window.location = _params["next"];
        //else
          //  window.location.reload();
    }
}

$(document).ready(function(){
    $("a.popup").colorbox(
            {
            'onComplete'        : function() 
            {
                $('#the-login-form').ajaxForm(
                {
                    dataType:  'json',
                    success:   processJson
                });
                $('head').append($('#cboxLoadedContent').contents().find('script'))
                $.colorbox.resize();
                }
                }
            );
  /*  $("a.popup").fancybox(
    {
        'centerOnScroll'    : true,
        'showCloseButton'   : false,
        'scrolling'         : 'no',
        'onComplete'        : function()
        {
            $('#the-login-form').ajaxForm(
            {
                dataType:  'json',
                success:   processJson
            });
            $.fancybox.resize();
            $.fancybox.center();
        }              
    });
    $("#login-caller").fancybox(
    {
        'centerOnScroll'    : true,
        'showCloseButton'   : false,
        'scrolling'         : 'no',
        'onComplete'        : function() 
        {
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
    */
    $('#login-caller').colorbox({
    'opacity': 0,
    'onComplete': function()
    {
            $('head').append($('#cboxLoadedContent').contents().find('link'));
            $('#the-login-form').ajaxForm(
            {
                dataType:  'json',
                success:   processJson
            });
            $.colorbox.resize();
            $.colorbox.resize();
    }
    });
    paramsRaw = (document.location.href.split("?", 2)[1] || "").split("#")[0].split("&") || [];
    for(var i = 0; i< paramsRaw.length; i++){
        var single = paramsRaw[i].split("=");
        if(single[0])
            _params[single[0]] = unescape(single[1]);
    }
    alert(document.location.hash);

    if(document.location.hash == '#login')
    {
	alert($('#login-caller').size());

        $('#login-caller').open();

    }
});

/* init corners */
$(document).ready(function()
{
    $(".rounded").corner("5px");
});
