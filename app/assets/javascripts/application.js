//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {
    $('.list').click(function() {
        $(this).find(".hidden").slideToggle('fast');
    });
});
