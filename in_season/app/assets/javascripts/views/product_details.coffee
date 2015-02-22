class App.Views.ProductDetials extends Backbone.View
  template: JST['tpl/product_details']
  className: 'product-details'

  initialize: (options) ->
    @app = options.app
    @frame = options.frame
    @_render()
    @_position()
    @_render_production_chart()
    @_render_in_season_chart()

  events:
    'click .recipies' : 'show_recepies'

  show_recepies: ->
    @app.navigate "recipes/#{@model.get('name')}", trigger: true

  _render: ->
    @$el.html @template @model.toJSON()

  _position: ->
    @app.frame.content_area.html @el

  _render_production_chart: ->


    chart_data = @model.production_chart_data()


    @model._sum_chart_data('production')
    ctx = @$("#production-chart").get(0).getContext("2d")
    new Chart(ctx).Doughnut(chart_data)

  _render_in_season_chart: ->
    chart_data = @model.in_season_chart_data()
    ctx = @$("#in-season-chart").get(0).getContext("2d")
    new Chart(ctx).Radar(chart_data, {scaleOverride: true, scaleStartValue: 0, scaleStepWidth: 1, scaleSteps: 1})
















