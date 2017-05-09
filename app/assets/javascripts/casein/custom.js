// CASEIN CUSTOM
// Use this file for your project-specific Casein JavaScript

$(document).ready(function(){
  // got this from https://gist.github.com/mataspetrikas/1723694
  $('a[href*="soundcloud.com"]').each(function(){
    var $link = $(this);
    $.getJSON('http://soundcloud.com/oembed?format=js&url=' + $link.attr('href') + '&iframe=true&callback=?', function(response){
      console.log(response)
      $link.replaceWith(response.html);
    });
  });
})
