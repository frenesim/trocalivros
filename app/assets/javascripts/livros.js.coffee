  # Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

if window.location.pathname != "/user/books"
  $("tr[data-link]").click ->
    window.location = @dataset.link


$(document).ready ->

  fileUploadErrors =
    maxFileSize: 'File is too big'
    minFileSize: 'File is too small'
    acceptFileTypes: 'Filetype not allowed'
    maxNumberOfFiles: 'Max number of files exceeded'
    uploadedBytes: 'Uploaded bytes exceed file size'
    emptyResult: 'Empty file upload result'

  $("#fileupload").fileupload
    url: '/photos'
    autoUpload: true
    #add: {files: images}

  $.getJSON $("#fileupload").prop("action"), (files) ->
    fu = $("#fileupload").data("blueimpFileupload")
    template = undefined
    fu._adjustMaxNumberOfFiles -files.length
    template = fu._renderDownload(files).appendTo($("#fileupload .files"))
    fu._reflow = fu._transition and template.length and template[0].offsetWidth
    template.addClass "in"
    $("#loading").remove()


  document.getElementById('links').onclick = (event) ->
    event = event or window.event
    target = event.target or event.srcElement
    link = (if target.src then target.parentNode else target)
    options =
      index: link
      event: event
    links = @getElementsByTagName('a')
    blueimp.Gallery links, options
