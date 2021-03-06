# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#projects').sortable
    axis: 'y'
    scroll: false
    delay: 150
    opacity: 0.65
    revert: true
    zIndex: 9999
    handle: '.handle'
    update: ->
      $.post($(this).data('update-url'), $(this).sortable('serialize'))