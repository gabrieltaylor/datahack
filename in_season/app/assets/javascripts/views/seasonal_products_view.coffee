class App.Views.SeasonalProducts extends Backbone.View
  template: JST['tpl/seasonal_products']
  className: 'seasonal-products'


  initialize: (options) ->
    @app = options.app

    @_fetch_resource =>
      @_render()
      @_position()
      @_render_products()



  _render: ->
    @$el.html @template()
    @$products_lists = @$('.seasonal-products-list')

  _position: ->
    @app.$content_area.html @el

  _render_products: ->
    @seasonal_products.each (product) =>
      new App.Views.SeasonalProduct wrapper: @$products_lists, model: product, app: @app

  _fetch_resource: (callback) ->
    @seasonal_products  = new App.Collections.SeasonalProducts [{name: "Apple"}, {name: "Orange"}, {name: "Bananna"}]



    callback()


