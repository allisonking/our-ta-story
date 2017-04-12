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
        $("#audio_link").removeAttr('required');
        video.hide();
        $("#video_link").removeAttr('required');
        text.show();
        base.show();
        break;
      case "video":
        audio.hide();
        $("#audio_link").removeAttr('required');
        video.show();
        $("#video_link").attr('required','');
        text.hide();
        base.show();
        break;
      case "audio":
        audio.show();
        $("#audio_link").attr('required','')
        video.hide();
        $("#video_link").removeAttr('required')
        text.hide();
        base.hide(); // get rid of this when audio works
        //base.show();
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
