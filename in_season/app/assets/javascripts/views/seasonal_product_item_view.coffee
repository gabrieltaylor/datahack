class App.Views.SeasonalProduct extends Backbone.View

  template: JST['tpl/seasonal_product_item']
  className: 'seasonal-product-item'
  tagName: 'li'

  initialize: (options) ->
    @$wrapper = options.wrapper
    @_render()
    @_position()

  _render: ->
    @$el.html @template @model.toJSON()

  _position: ->
    @$wrapper.append @el



