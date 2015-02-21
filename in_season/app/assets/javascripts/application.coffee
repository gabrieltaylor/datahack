#= require ./namespace
#= require moment
#= require jquery
#= require jquery_ujs
#= require jquery.transit
#= require jquery.fastClick
#= require jquery.event.move
#= require jquery.event.swipe
#= require underscore
#= require backbone
#= require backbone.localStorage
#= require underscore_string
#= require_tree ./models
#= require_tree ./collections
#= require_tree ./tpl
#= require_tree ./views
#= require_self



window.addEventListener 'load', =>
  FastClick.attach(document.body)
, false


class App.Controller extends Backbone.Router

  initialize: (options = {}) ->
    document.addEventListener 'deviceready', @_on_device_ready, false


    @on_client = options.on_client
    @server_url = options.server_url || "http://localhost:5000"
    @_render_frame()
    @load_resources =>
      Backbone.history.start()

  load_resources : (success_callback) ->
    console.log "Loading Resoruces...needed"
    success_callback()

  _render_frame: ->
    @frame = new App.Views.Frame
    @$content_area  = $('.content-area')

  routes:
    "" : "seasonal_products"

  seasonal_products: ->
    new App.Views.SeasonalProducts app: this


































  _on_device_ready: =>
    navigator.geolocation.getCurrentPosition @geolocation_success

  geolocation_success: (position) =>
    lat = position.coords.latitude
    long = position.coords.longitude
    @get_addres_from lat, long

  get_addres_from: (lat, long) =>
    geocoder = new google.maps.Geocoder()
    latlng = new (google.maps.LatLng)(lat, long)
    geocoder.geocode { 'latLng': latlng }, (results, status) ->
      if status == google.maps.GeocoderStatus.OK
        console.log results
        if results[1]
          province = results[0].address_components[5].long_name
          alert 'You are in ' + province
        else
          alert 'No results found'
      else
        alert 'Geocoder failed due to: ' + status


