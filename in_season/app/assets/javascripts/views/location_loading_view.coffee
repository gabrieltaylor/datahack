class App.Views.LocationLoadingView extends Backbone.View

  template: JST['tpl/location_loading']

  initialize: (options) ->
    @app = options.app
    @_render()
    @_position()

    @_on_device_ready()
    # document.addEventListener 'deviceready', @_on_device_ready, false

  _render: ->
    @$el.html @template()

  _position: ->
    @app.$content_area.html @el

  _on_device_ready: ->
    navigator.geolocation.getCurrentPosition @geolocation_success

  geolocation_success: (position) =>
    lat = position.coords.latitude
    long = position.coords.longitude
    @get_addres_from lat, long

  get_addres_from: (lat, long) ->
    geocoder = new google.maps.Geocoder()
    latlng = new (google.maps.LatLng)(lat, long)
    geocoder.geocode { 'latLng': latlng }, (results, status) =>
      if status == google.maps.GeocoderStatus.OK
        if results[1]
          province = results[0].address_components[5].long_name
          localStorage.setItem "province", province
          @app.province = localStorage.getItem('province')

          @app.navigate "seasonal-products", trigger: true
        else
          alert 'No results found'
      else
        alert 'Geocoder failed due to: ' + status

  # show_error: (error) =>
  #   errors =
  #     1: 'Permission denied',
  #     2: 'Position unavailable',
  #     3: 'Request timeout'

  #   alert "Error: " + errors[error.code]

  #   @error_callback() if @error_callback
