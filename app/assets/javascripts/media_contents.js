// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(function() {
  var mediaDropzone;
  mediaDropzone = new Dropzone("#media-dropzone");
  return mediaDropzone.on("success", function(file, responseText) {
    var _this = this;
    appendContent(responseText.file_name.url, responseText.id);
    setTimeout(function(){
      $('#myModal').modal('hide');
      _this.removeAllFiles();
    },1000);
  });
});

var appendContent = function(imageUrl, mediaId) {
  $("#media-contents").append('<div class="col-lg-4">' +
    '<div class="thumbnail"><img src="' + imageUrl + '"/>' +
    '<div class="caption">' +
    '<input id="media_contents_" name="media_contents[]" value="' + mediaId +'" type="checkbox">' +
    '</div>' +
    '</div></div>');
  $("#delete").removeAttr('disabled');
  $("#no-media").html("");
};
