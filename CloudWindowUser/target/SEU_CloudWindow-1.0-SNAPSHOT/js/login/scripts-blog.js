$(document).ready(function(){

    "use strict";

	// init Isotope
    var $grid = $('.blog-masonry-container').isotope({
        itemSelector: '.blog-masonry-item',
        layoutMode: 'masonry'
    });
    // layout Isotope after each image loads
    $grid.imagesLoaded().progress( function() {
        $grid.isotope('layout');
    });

    
    $('.blog-filters li').click(function() {
      var current = $(this);
      
      current.siblings('li').removeClass('active');
      current.addClass('active');
      
      var filterValue = current.attr('data-filter');
      var container = current.closest('.blog-masonry').find('.blog-masonry-container');
      container.isotope({ filter: filterValue });
    });


});