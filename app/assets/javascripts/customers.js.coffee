# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# To make customer list drag and dropable
jQuery ->

	$('#customerIndex').sortable(axis: 'y')