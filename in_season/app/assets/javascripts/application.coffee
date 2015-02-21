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
    "" : "location"
    'seasonal-products': "seasonal_products"
    'seasonal-products/:id': "show_product_details"

  location: ->
    @province = localStorage.getItem('province')
    if @province
      @navigate 'seasonal-products', tigger: true
    else
      new App.Views.LocationLoadingView app: @


  seasonal_products: ->
    new App.Views.SeasonalProducts app: this

  show_product_details:(id) ->
    new App.Views.ProductDetials app: this




































