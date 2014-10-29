# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#
#= require underscore
#= require gmaps/google

@convert = (venue) ->
  array = []

  y =
    lat: venue.latitude
    lng: venue.longitude
    infowindow: venue.name

  array.push y

  googleMap array

@googleMap = (content) ->
  handler = Gmaps.build("Google")
  handler.buildMap
    provider: {}
    internal:
      id: "map"
  , ->
    markers = handler.addMarkers(content)
    handler.bounds.extendWith markers
    handler.fitMapToBounds()

$ ->
  console.log "fired!"
  venueId = $('*[data-id]').data("id")

  $.ajax
    url: '/venues/' + venueId + '.json'
  .done (data) ->
    convert data
