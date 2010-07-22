
function getProcessJson(target_form)
{
    return function(data)
    {
        var cont = $(target_form);
        if(data.errors)
        {
            var err, msg;
            err = cont.find("#errors");
            msg = '<li style="text-align: center; padding: 5px;" class="ui-corner-all ui-state-error">' + data.msg + '</li>';
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
        var tf = $(target_form);
        tf.html(data);
        tf.dialog("open");
        var oldw = tf.dialog('option', 'width'), oldh = tf.parent().height();
        tf.dialog('option', 'width', $('#wrap', tf).width() + 32);
        $("#modal", tf).ajaxForm(
        {
            dataType:  "json",
            success:   getProcessJson(target_form)
        });
        $("input[type=submit]", tf).css("display", "none");
        tf.dialog('option','position',[
            tf.parent().position().left - (tf.parent().width() - oldw)/2,
            tf.parent().position().top - (tf.parent().height() - oldh)/2]);
    });
}

function getBaseOpts()
{
    return {
        autoOpen: false,
        draggable: false,
        modal: true,
        open: function(event, ui) { $("textarea", this).wysiwyg(); },
        resizable: false
    };
}

$(document).ready(function(){
    $("textarea").wysiwyg();

    if($("#addnews").size())
    {
        $("#dialog-form2").dialog($.extend(getBaseOpts(), 
            {
                title: "Добавление новости",
                buttons: 
                {
                    "Добавить": function() { $("#modal", this).submit(); },
                    "Отменить": function() { $(this).dialog("close"); }
                }
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
                }
            }));
        $("#login-caller").click(function() 
        {
            openAjaxDialog("/login/", "#dialog-form");
            return false;
        });
    }
    /* init corners */
    $(".rounded").corner("5px");
    $(".rounded-right").corner("5px right");
    $(".rounded-left").corner("5px left");
});
