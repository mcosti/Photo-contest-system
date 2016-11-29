var $grid = $('.grid').imagesLoaded( function() {
    // init Masonry after all images have loaded
    $grid.masonry({
        itemSelector: '.grid-item',
        columnWidth: 350,
        gutter: 10,
        transitionDuration: '0.8s',
        isFitWidth: true
    });
});
