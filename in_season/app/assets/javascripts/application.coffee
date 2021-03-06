#= require ./namespace
#= require masonry
#= require images_loaded
#= require chart_js
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
#= require foundation
#= require foundation.tooltip
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
    @province = localStorage.getItem('province')
    @on_client = options.on_client
    @server_url = options.server_url || "https://datahack-production.herokuapp.com"
    @$content_area = $('#content-area')
    @seasonal_products = new App.Collections.SeasonalProducts
    Backbone.history.start()


  routes:
    "" : "location"
    'seasonal-products': "seasonal_products"
    'seasonal-products/:id': "seasonal_product"
    "seasonal-products/:id/recipes/:product_name" : "show_recipes"
    "help-guide": 'show_help_guide'
  location: ->
    if @province
      @navigate 'seasonal-products', trigger: true, replace: true
    else
      new App.Views.LocationLoadingView app: this

  seasonal_products: ->
    # @_render_frame()
    console.log "seasonal"
    new App.Views.SeasonalProducts app: this

  seasonal_product: (id) ->
    new App.Views.ProductDetials app: this, product_id: id

  show_recipes: (id, product_name) ->
    new App.Views.RecipesView app: this, product_name: product_name, product_id: id

  show_help_guide: ->

    new App.Views.HelpGuide app: this
  _render_frame: ->
    @frame = new App.Views.Frame app: this

  show_loading: ->
    $('.application-loading').removeClass 'hide'

  hide_loading: ->
    $('.application-loading').addClass 'hide'




