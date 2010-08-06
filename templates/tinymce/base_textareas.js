tinyMCE.init({
    cols: 80,
    rows: 30,
    mode: "textareas",
    cleanup_on_startup: "true",
    theme: "advanced",
    theme_advanced_toolbar_location: "top",
    theme_advanced_toolbar_align: "left",
    theme_advanced_statusbar_location: "bottom",
    plugins: "safari,table,style,layer,pagebreak,iespell,insertdatetime,media,spellchecker,contextmenu,fullscreen,paste,searchreplace",
    language: "{{ language }}",
    spellchecker_languages : "{{ spellchecker_languages }}",
    spellchecker_rpc_url : "{{ spellchecker_rpc_url }}",
    custom_undo_redo_levels: 10
});
