class App.Views.SeasonalProduct extends Backbone.View

  template: JST['tpl/seasonal_product_item']
  # className: 'seasonal-product-item'
  tagName: 'li'

  initialize: (options) ->
    @app = options.app
    @$wrapper = options.wrapper
    @_render()
    @_position()

  events:
    'click' : "show_product_details"

  show_product_details: (e) ->
    @model.id = 3
    @app.navigate "seasonal-products/#{@model.id}", trigger: true

  _render: ->
    @$el.html @template @model.toJSON()

  _position: ->
    @$wrapper.append @el




