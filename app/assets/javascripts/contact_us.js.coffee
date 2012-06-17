# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
	$('.menu_contact_us').live 'click', ->
		if($('#dimmer').is(':visible'))
		  $('#dimmer').fadeOut()
		else
		  $('#dimmer').fadeIn()