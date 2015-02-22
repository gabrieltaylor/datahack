class App.Views.SeasonalProduct extends Backbone.View

  template: JST['tpl/seasonal_product_item']
  tagName: 'li'

  initialize: (options) ->
    @app = options.app
    @$wrapper = options.wrapper
    @_render()
    @_position()

  events:
    'click' : "render_product_details"

  render_product_details: (e) ->
    new App.Views.ProductDetials app: @app, model: @model

  _render: ->
    @$el.html @template @model.toJSON()

  _position: ->
    @$wrapper.append @el
