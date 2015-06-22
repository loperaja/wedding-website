# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  latlng = new (google.maps.LatLng)(53.818730, -1.5650)
  initialize = ->
    mapOptions = 
      center: latlng
      zoom: 17
      scrollwheel: false,
      mapTypeId: google.maps.MapTypeId.HYBRID
    map = new (google.maps.Map)(document.getElementById('map-canvas'), mapOptions)
    marker = new (google.maps.Marker) (
      position: latlng
      map: map
      title: 'Here!')
    return

  google.maps.event.addDomListener window, 'load', initialize

$(document).ready(ready)
$(document).on('page:load', ready)
