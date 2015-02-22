class App.Views.SeasonalProducts extends Backbone.View

  template: JST['tpl/seasonal_products']
  className: 'seasonal-products'

  initialize: (options) ->
    @app = options.app

    @_fetch_resource =>
      @_render()
      @_position()
      @_render_products()

  events:
    'click .help-guide' : 'visit_help_guide'
    "click .logo-small" : "visit_home_page"

  visit_home_page: ->
    @app.navigate '', trigger: true

  visit_help_guide: ->
    @app.navigate 'help-guide', trigger: true




  _render: ->
    @$el.html @template()
    @$fruits_lists = @$('.seasonal-fruits-list')
    @$vegetables_lists = @$('.seasonal-vegetables-list')
    @$seafood_lists = @$('.seasonal-seafood-list')


  _position: ->
    $('#app-wrapper').html @el

  _render_products: ->
    @seasonal_products.each (product) =>
      if product.attributes.context is "fruit"
        new App.Views.SeasonalProduct wrapper: @$fruits_lists, model: product, app: @app
      if product.attributes.context is "vegetable"
        new App.Views.SeasonalProduct wrapper: @$vegetables_lists, model: product, app: @app
      if product.attributes.context is "seafood"
        new App.Views.SeasonalProduct wrapper: @$seafood_lists, model: product, app: @app

  _fetch_resource: (callback) ->
    @seasonal_products  = @app.seasonal_products

    $.ajax
      url: @app.server_url + '/seasonal-products'
      dataType: 'json'
      beforeSend: => @app.show_loading()
      success:(response) =>
        @seasonal_products.reset response
      error: (error) => console.log "Error"
      complete: =>
        @app.hide_loading()
        callback()



