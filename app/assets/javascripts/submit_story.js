$(document).ready(function(){
  console.log($("#story_media_type").find(":selected").text());

  $("#story_media_type").click(function(){
    console.log($("#story_media_type").find(":selected").text());
  })
})
