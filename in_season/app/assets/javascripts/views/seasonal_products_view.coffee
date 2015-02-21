class App.Views.SeasonalProducts extends Backbone.View
  template: JST['tpl/seasonal_products']
  className: 'seasonal-products'
  tagName: 'ul'

  initialize: (options) ->
    @app = options.app

    @_fetch_resource =>
      @_render()
      @_position()
      @_render_products()

  _render: ->
    @$el.html @template()

  _position: ->
    @app.$content_area.append @el

  _render_products: ->
    @seasonal_products.each (product) =>
      new App.Views.SeasonalProduct wrapper: @$el, model: product

  _fetch_resource: (callback) ->
    @seasonal_products  = new App.Collections.SeasonalProducts {name: "Apple"}
    callback()


