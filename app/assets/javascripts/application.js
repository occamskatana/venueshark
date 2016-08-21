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
//= require turbolinks
//= require_tree .


var pointsArray = document.getElementsByClassName('point');


var animatePoints = function(){
	var revealPoint = function() {
		$(this).css({
			opacity: 1,
			transform: 'scaleX(1) translateY(0)'
		});
	};

	$.each($('.point'), revealPoint);
}

$(window).load(function() {

	//auto-load on tall ass screens
		if ($(window).height() > 950 ) {
			animatePoints();
		}

	var scrollDistance = $('.selling-points').offset().top - $(window).height() + 200;

	$(window).scroll(function(event) {
		if($(window).scrollTop() >= scrollDistance){
			animatePoints();
		}

	});
});
