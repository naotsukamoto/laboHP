// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.turbolinks
//= require bootstrap-sprockets
//= require bootstrap-switch
//= require underscore
//= require markerclusterer
//= require gmaps/google
//= require turbolinks
//= require react
//= require react_ujs
//= require components
//= require marked
// require_tree .

// button of backing to pagetop with bootstrap
$(function() {
    var topBtn = $('#page-top');
    topBtn.hide();
    //スクロールが500に達したらボタン表示
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            topBtn.fadeIn();
        } else {
            topBtn.fadeOut();
        }
    });
    //スクロールしてトップ
    topBtn.click(function () {
        $('body,html').animate({
            scrollTop: 0
        }, 500);
        return false;
    });
});// button of backing to pagetop with bootstrap fin.

// small window open when pushing share buttons

$(function() {
    var shareButton = document.getElementsByClassName("azm-social");
    for (var i = 0; i < shareButton.length; i++) {
        shareButton[i].addEventListener("click", function(e) {
            e.preventDefault();
            window.open(this.href, "SNS_window", "width=600, height=500, menubar=no, toolbar=no, scrollbars=yes");
        }, false);
    }
})();



// If teacher's button clicked...
// ajax
// ref: http://qiita.com/somewhatgood@github/items/113773747a6faa800366
