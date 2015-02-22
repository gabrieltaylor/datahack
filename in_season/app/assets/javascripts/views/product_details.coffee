class App.Views.ProductDetials extends Backbone.View
  template: JST['tpl/product_details']
  className: 'product-details'

  initialize: (options) ->
    @app = options.app
    @frame = options.frame
    @_render()
    @_position()
    @_render_chart()

  events:
    'click .recipies' : 'show_recepies'

  show_recepies: ->
    @app.navigate "recipes/#{@model.get('name')}", trigger: true

  _render: ->
    @$el.html @template @model.toJSON()

  _position: ->
    @app.frame.content_area.html @el

  _render_chart: ->
    chart_data = @model.format_chart_data()
    ctx = @$("#production-chart").get(0).getContext("2d")
    new Chart(ctx).Doughnut(chart_data)

















