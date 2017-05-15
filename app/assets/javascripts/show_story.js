$(document).ready(function(){
  // got this from https://gist.github.com/mataspetrikas/1723694
  // this is to pull a soundcloud iframe
  $('a[href*="soundcloud.com"]').each(function(){
    var $link = $(this);
    $.getJSON('http://soundcloud.com/oembed?format=js&url=' + $link.attr('href') + '&iframe=true&callback=?', function(response){
      console.log(response)
      $link.replaceWith(response.html);
    });
  });

  $('#toggleCommentBtn').on('click', function(event) {
    $('#add-comment').toggle('show');
  })

})
