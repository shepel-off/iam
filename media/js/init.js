$(document).ready(function(){
    $("textarea").wysiwyg();
    $("div.wysiwyg").css("padding", "3px 1px");

    $("#content-wrapper").css("height", $("#content-wrapper").height());
    $("#menu-v .category ul").css("display", "none");
    $("#menu-v .category span").click(function() {
        $("ul", $(this).parent()).slideToggle("fast");
    });
    
    /* init corners */
    $(".rounded").corner("5px");
    $(".rounded-right").corner("5px right");
    $(".rounded-left").corner("5px left");

    /*
    $("#mail-hidden").css("display", "none");
    $("#mail-enter").click(function() {
        $("#mail-hidden").slideToggle("slow");
        $(".rounded-left").corner("5px left");
    });*/

});
