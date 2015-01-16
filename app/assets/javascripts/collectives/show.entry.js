var $ = require('jquery')
  , Masonry = require('masonry')
  , imagesLoaded = require('imagesloaded')

$(function() {
  var container = $('.grids')[0]
  imagesLoaded(container, function() {
    var msnry = new Masonry( container, { itemSelector: '.grid' })
    msnry.layout()
  })
})