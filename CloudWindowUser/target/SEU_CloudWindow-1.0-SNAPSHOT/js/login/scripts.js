/*
              _                 _ 
  /\/\   ___ | |__   __ _ _ __ (_)
 /    \ / _ \| '_ \ / _` | '_ \| |
/ /\/\ \ (_) | |_) | (_| | |_) | |
\/    \/\___/|_.__/ \__,_| .__/|_|
                         |_|      

Tu as envie de participer à un beau projet ? Envoie-nous ton CV !
https://www.mobapi.com/fr/on-recrute/

*/

$(document).ready(function(){

	"use strict";

	// Mobile Toggle
	
	$('.mobile-toggle').click(function(){
		$('nav').toggleClass('open-nav');
	});
	
	// Smooth scroll
	
	$('.inner-link').smoothScroll({speed: 2000});

    // Flexslider

    $('.flexslider').flexslider( {
        slideshowSpeed: 7000,
        animationSpeed: 1000,
    });
	
	// Scroll Reveal
	
	if (!(/Android|iPhone|iPad|iPod|BlackBerry|Windows Phone/i).test(navigator.userAgent || navigator.vendor || window.opera)) {
       window.scrollReveal = new scrollReveal();
    }else{
    	$('body').addClass('pointer');
    }


	
	// Append .background-image-holder <img>'s as CSS backgrounds
	
	$('.background-image-holder').each(function(){
		var imgSrc= $(this).children('img').attr('src');
		$(this).css('background', 'url("' + imgSrc + '")');
    	$(this).children('img').hide();
        $(this).css('background-position', '50% 0%');
	});

	// Hero word switcher

    var switcher = $('#hero-word-switcher');
    var delay = 2000;
    var count = switcher.find('strong').length;

    function calculateWidths() {
        switcher.find('strong').each(function(index) {
            $(this).attr('data-width', $(this).width());
        });
        switcher.width(switcher.find('.active').attr('data-width'));
    }
    calculateWidths();

    $(window).resize(function() {
        calculateWidths();
    });

    function doChange() {
        var nextItem;
        var currentItem = parseInt(switcher.find('.active').attr('data-oid'));

        if (currentItem == count - 1) {
            nextItem = 0;
        } else {
            nextItem = currentItem + 1;
        }

        switcher.addClass('in');

        switcher.find('[data-oid="' + currentItem + '"]').removeClass('active');
        switcher.find('[data-oid="' + nextItem + '"]').addClass('active');

        switcher.width(switcher.find('[data-oid="' + nextItem + '"]').attr('data-width'));
        setTimeout(doChange, delay);
    }

    setTimeout(doChange, delay);

	
	/************** Parallax Scripts **************/

    var isFirefox = typeof InstallTrigger !== 'undefined';
    var isIE = /*@cc_on!@*/ false || !!document.documentMode;
    var isChrome = !!window.chrome;
    var isSafari = Object.prototype.toString.call(window.HTMLElement).indexOf('Constructor') > 0;
    var prefix;

    if (isFirefox) {
        prefix = '-moz-';
    } else if (isIE) {

    } else if (isChrome || isSafari) {
        prefix = '-webkit-';
    }

    $('.main-container section:first-child').addClass('first-child');

    $('.parallax-background').each(function () {

        if ($(this).closest('section').hasClass('first-child') && !$(this).closest('section').hasClass('slider-fullscreen')) {
            $(this).attr('data-top', prefix + 'transform: translate3d(0px,0px, 0px)');
            $(this).attr('data-top-bottom', prefix + 'transform: translate3d(0px,200px, 0px)');

        } else {

            $(this).attr('data-bottom-top', prefix + 'transform: translate3d(0px,-100px, 0px)');
            $(this).attr('data-center', prefix + 'transform: translate3d(0px,0px, 0px)');
            $(this).attr('data-top-bottom', prefix + 'transform: translate3d(0px,50px, 0px)');

        }

    });
    
    if (!(/Android|iPhone|iPad|iPod|BlackBerry|Windows Phone/i).test(navigator.userAgent || navigator.vendor || window.opera)) {
        skrollr.init({
            forceHeight: false
        });
        
        // Multi Layer Parallax
    
		$('.hover-background').each(function(){
			$(this).mousemove(function( event ) {
				$(this).find('.background-image-holder').css('transform', 'translate(' + -event.pageX /30 + 'px,' + -event.pageY /45+ 'px)');
				$(this).find('.layer-1').css('transform', 'translate(' + -event.pageX /50 + 'px,' + -event.pageY /50+ 'px)');
				$(this).find('.layer-2').css('transform', 'translate(' + -event.pageX /60 + 'px,' + -event.pageY /60+ 'px)');
			});
		});
    }
    



});

$(window).load(function(){

  "use strict";
  	
  
	// Align Elements Vertically
	
	alignVertical();
	alignBottom();
	
	$(window).resize(function(){
		alignVertical();
		alignBottom();
	});

});


function alignVertical(){

		$('.align-vertical').each(function(){
			var that = $(this);
			var height = that.height();
			var parentHeight = that.parent().height();
			var padAmount = (parentHeight / 2) - (height/2);
			that.css('padding-top', padAmount);
		});
	
}

function alignBottom(){
	$('.align-bottom').each(function(){
		var that = $(this);
		var height = that.height();
		var parentHeight = that.parent().height();
		var padAmount = (parentHeight) - (height) - 32;
		that.css('padding-top', padAmount);
	});
}

