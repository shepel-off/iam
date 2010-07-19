_params = {};

function getProcessJson(target_form)
{
    return function(data)
    {
        var cont = $(target_form);
        if(data.errors)
        {
            var err, msg;
            err = cont.find('#errors');
            msg = '<li style="text-align: center;" class="ui-state-error">' + data.msg + '</li>';
            if(!err.size())
                cont.find('#the-login-form').before('<ul id="errors">' + msg + '</ul>');
            else
            {
                err.empty();
                err.append(msg);
            }   
        }
        else
        {
            cont.dialog('close');
            if("next" in _params)
                window.location = _params["next"];
            else
                window.location.reload();
        }
    }   
}

function getAjaxForm(target_url, target_form)
{
    return function(event, ui)
    {
        $.get(target_url, function(data) 
        {
            $(target_form).html(data);
            $(target_form).contents().find('textarea').wysiwyg();
            $(target_form).contents().find('#the-login-form').ajaxForm(
            {
                dataType:  'json',
                success:   getProcessJson(target_form)
            });
            $(target_form).contents().find('input[type=submit]').css('display','none');
        });
    }
}

$(document).ready(function(){
    $("textarea").wysiwyg();
    dialogopt = {
            autoOpen: false,
            width: 345,
            draggable: false,
            resizable: false,
            open: getAjaxForm('/news/add/', '#dialog-form2'),
            modal: true,
            title: $('#addnews').text(),
            buttons: 
            {
                Submit: function() 
                {
                    $(this).contents().find('#the-login-form').submit();
                },
                Cancel: function() 
                {
                    $(this).dialog('close');
                }
            }
    };
    if($("#addnews").size())
    {
        $("#dialog-form2").dialog(dialogopt);
        $('#addnews').click(function() 
        {
            $('#dialog-form2').dialog('open');
            return false;            
        });
    }
    if($("#login-caller").size())
    {
        $("#dialog-form").dialog($.extend(dialogopt, {
            open: getAjaxForm('/login/', '#dialog-form'),
            title: $('#login-caller').text(),
            }));
        $('#login-caller').button().click(function() 
        {
            $('#dialog-form').dialog('open');
            return false;
        });
        if(document.location.hash == '#login')
        {
            $('#login-caller').click();
        }
    }

    paramsRaw = (document.location.href.split("?", 2)[1] || "").split("#")[0].split("&") || [];
    for(var i = 0; i< paramsRaw.length; i++)
    {
        var single = paramsRaw[i].split("=");
        if(single[0])
            _params[single[0]] = unescape(single[1]);
    }
});

/* init corners */
$(document).ready(function()
{
    $(".rounded").corner("5px");
});
