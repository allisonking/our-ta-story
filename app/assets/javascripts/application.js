// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require creative/bootstrap/bootstrap.min
//= require creative/scrollreveal/scrollreveal
//= require creative/jquery.magnific-popup.min
//= require submit_story.js
//= require chosen.jquery.min.js
//= require chosen.proto.min.js

$(document).on('ready page:load', function () {
    $('#story_tag_ids').chosen({
        allow_single_deselect: true,
        width: '100%',
        create_option: function (tag) {
            var chosen = this;
            data = {'tag': tag};
            $.ajax({
                type: 'post',
                url: '/tags',
                data: JSON.stringify(data),
                beforeSend: function (xhr) {
                    xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))
                },
                contentType: 'application/json',
                success: function (response) {
                    chosen.append_option({
                        value: response.id,
                        text: response.name
                    })
                },
                error: function (response) {
                },
                complete: function () {
                }
            })
        },
        persistent_create_option: true,
        skip_no_results: true,
        create_option_text: 'Add tag'
    })
});

