$(document).ready(function(){

  $(function(){
    $(':input[type=number]').on('mousewheel',function(e){ $(this).blur(); });
  });

  var makeBodyRequired = function(boolean) {
    if(boolean) {
      $("#form_body_trix_input_story").attr('required','');
      $("#form_body_label").addClass('required');
    }
    else {
      $("#form_body_trix_input_story").removeAttr('required');
      $("#form_body_label").removeClass('required');
    }
  }

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
        //console.log($("#form-body").parent())
        makeBodyRequired(true);
        text.show();
        base.show();
        break;
      case "video":
        audio.hide();
        $("#audio_link").removeAttr('required');
        video.show();
        $("#video_link").attr('required','');
        makeBodyRequired(false);
        text.hide();
        base.show();
        break;
      case "audio":
        audio.show();
        $("#audio_link").attr('required','')
        video.hide();
        $("#video_link").removeAttr('required')
        makeBodyRequired(false);
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

  })
})
