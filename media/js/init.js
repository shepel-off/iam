
function getProcessJson(target_form)
{
    return function(data)
    {
        var cont = $(target_form);
        if(data.errors)
        {
            var err, msg;
            err = cont.find("#errors");
            msg = '<li style="text-align: center;" class="ui-state-error">' + data.msg + '</li>';
            if(!err.size())
                cont.find("#modal").before('<ul id="errors">' + msg + "</ul>");
            else
            {
                err.empty();
                err.append(msg);
            }   
        }
        else
        {
            cont.dialog("close");
            window.location.reload();
        }
    }   
}

function openAjaxDialog(target_url, target_form)
{
    $.get(target_url, function(data) 
    {
        $(target_form).html(data);
        $(target_form).dialog("open");
        $("#modal", target_form).ajaxForm(
        {
            dataType:  "json",
            success:   getProcessJson(target_form)
        });
        $("input[type=submit]", target_form).css("display", "none");
    });
}

function getBaseOpts()
{
    return {
        autoOpen: false,
        draggable: false,
        modal: true,
        open: function(event, ui) { $("textarea", this).wysiwyg(); },
        position: ['center','middle'],
        resizable: false,
        width: "auto"
    };
}

$(document).ready(function(){
    $("textarea").wysiwyg();

    if($("#addnews").size())
    {
        $("#dialog-form2").dialog($.extend(getBaseOpts(), 
            {
                title: "Добавление новостей",
                buttons: 
                {
                    "Добавить": function() { $("#modal", this).submit(); },
                    "Отменить": function() { $(this).dialog("close"); }
                },
            }));
        $("#addnews").click(function() 
        {
            openAjaxDialog("/news/add/", "#dialog-form2");
            return false;            
        });
    }
    if($("#login-caller").size())
    {
        $("#dialog-form").dialog($.extend(getBaseOpts(),
            {
                title: $("#login-caller").text(),
                buttons: 
                {
                    "Войти": function() { $("#modal", this).submit(); },
                    "Отменить": function() { $(this).dialog("close"); }
                },
            }));
        $("#login-caller").button().click(function() 
        {
            openAjaxDialog("/login/", "#dialog-form");
            return false;
        });
    }
    /* init corners */
    $(".rounded").corner("5px");
});
