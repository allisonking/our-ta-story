$(document).ready(function(){
  console.log($("#story_media_type").find(":selected").text());

  $("#story_media_type").change(function(){
    var storyType = $("#story_media_type").val();
    var base = $(".base_story_input");
    var text = $(".text_unique_input");
    var video = $(".video_unique_input");
    var audio = $(".audio_unique_input");

    switch(storyType) {
      case "text":
        audio.hide();
        video.hide();
        text.show();
        base.show();
        break;
      case "video":
        audio.hide();
        video.show();
        text.hide();
        base.show();
        break;
      case "audio":
        audio.show();
        video.hide()
        text.hide();
        base.show();
        break;
      case "":
        audio.show();
        video.hide()
        text.hide();
        base.hide();

      default:
        break;
    }


    console.log($("#story_media_type").val());
  })
})
