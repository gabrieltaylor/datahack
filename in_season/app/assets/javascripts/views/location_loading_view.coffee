class App.Views.LocationLoadingView extends Backbone.View

  template: JST['tpl/location_loading']

  initialize: (options) ->
    @app = options.app
    @_render()
    @_position()
    @_on_device_ready()
    # document.addEventListener 'deviceready', @_on_device_ready, false

  events:
    'change #provinces' : 'manual_change_province'

  _render: ->
    @$el.html @template()

    @$provices_select = @$('#provinces')
    @$manual_select_wrap = @$('.manual-select')

  _position: ->
    @app.$content_area.html @el

  _on_device_ready: ->
    navigator.geolocation.getCurrentPosition @geolocation_success, @geolocation_error

  geolocation_success: (position) =>
    lat = position.coords.latitude
    long = position.coords.longitude
    @get_addres_from lat, long

  geolocation_error: ->
    $('.loading-wrap').addClass 'hide'
    $('.manual-select').removeClass 'hide'

  get_addres_from: (lat, long) ->
    geocoder = new google.maps.Geocoder()
    latlng = new (google.maps.LatLng)(lat, long)
    geocoder.geocode { 'latLng': latlng }, (results, status) =>
      if status == google.maps.GeocoderStatus.OK
        if results[1]
          province = results[0].address_components[5].long_name
          localStorage.setItem "province", province
          @app.province = localStorage.getItem('province')

          @app.province_int = @_province_to_int localStorage.getItem('province')
          @app.navigate "seasonal-products", trigger: true, replace: true

        else
          alert 'No results found'
      else
        alert 'Geocoder failed due to: ' + status

  _province_to_int: (province_name) ->
    _.indexOf @provinces(), province_name

  provinces: ->
    ["Alberta", "British Columbia", "Manitoba", "New Brunswick", "Newfoundland and Labrador", "Nova Scotia", "Ontario", "Prince Edward Island", "Quebec", "Saskatchewan"]

  manual_change_province: (e) ->
    @app.province = @$provices_select.val()
    @app.navigate "seasonal-products", trigger: true

