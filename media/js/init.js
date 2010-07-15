_params = {};

function processJson(data)
{
    var cont = $('.dform:visible');
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

function addnewsOpen(event, ui)
{
	$.get('/news/add',function(data) {
        $('#dialog-form2').html(data);
        $('#dialog-form2').contents().find('#id_body').wysiwyg();
	    $('#dialog-form2').contents().find('#the-login-form').ajaxForm(
        {
	        dataType:  'json',
            success: processJson
        });
        $('#dialog-form2').contents().find('input[type=submit]').css('display','none');
    });
}
function loginformOpen(event, ui)
{
        $.get('/login/',function(data) {
            $('#dialog-form').html(data);
	        $('#dialog-form').contents().find('#the-login-form').ajaxForm(
            {
	            dataType:  'json',
                success:   processJson
            });
            $('#dialog-form').contents().find('input[type=submit]').css('display','none');
        });
}

$(document).ready(function(){
    $("#dialog-form2").dialog({
        autoOpen: false,
	    width: 345,
        draggable: false,
        resizable: false,
        open: addnewsOpen,
        modal: true,
        title: $('#addnews').text(),
	    buttons: {
            Submit: function() {
                $(this).contents().find('#the-login-form').submit();
            },
            Cancel: function() {
                $(this).dialog('close');
            }
        }
    });
    $("#dialog-form").dialog({
        autoOpen: false,
        draggable: false,
        resizable: false,
        open: loginformOpen,
        modal: true,
        title: $('#login-caller').text(),
	    buttons: {
            Submit: function() {
                $(this).contents().find('#the-login-form').submit();
            },
            Cancel: function() {
                $(this).dialog('close');
            }
        }
	});
    $('#addnews').click(function() {$('#dialog-form2').dialog('open');});
    $('#login-caller').button().click(function() {$('#dialog-form').dialog('open');});

    paramsRaw = (document.location.href.split("?", 2)[1] || "").split("#")[0].split("&") || [];
    for(var i = 0; i< paramsRaw.length; i++){
        var single = paramsRaw[i].split("=");
        if(single[0])
            _params[single[0]] = unescape(single[1]);
    }

    if(document.location.hash == '#login')
    {
        $('#login-caller').click();
    }
});

/* init corners */
$(document).ready(function()
{
    $(".rounded").corner("5px");
});
