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

// If teacher's button clicked...
// ajax
// ref: http://qiita.com/somewhatgood@github/items/113773747a6faa800366

// glyphicon set to each button
$(function(){
  for(var i=0;i<3;i++){
    var span = document.createElement("span");
    var btn = document.getElementById("btn-" + i);
    if(i==0){
      span.setAttribute("class", "glyphicon glyphicon-pencil");
    }else if(i==1){
      span.setAttribute("class", "glyphicon glyphicon-book");
    }else{
      span.setAttribute("class", "glyphicon glyphicon-user");
    }
    btn.appendChild(span);
  }
});
