class App.Views.ProductDetials extends Backbone.View
  template: JST['tpl/product_details']
  className: 'product-details'

  initialize: (options) ->
    @app = options.app
    @frame = options.frame

    @browser_width = $(window).width()


    if @app.seasonal_products.length
      @model = @app.seasonal_products.get options.product_id
      console.log @model
      @_render()
      @_position()
      @_render_production_chart()
      @_render_in_season_chart()

      @_set_width_of_charts()
    else
      @app.navigate 'seasonal-products', trigger: true

  events:
    'click .back' : 'back'
    'click .recipies' : 'show_recepies'

  back: ->
    @app.navigate "seasonal-products", trigger: true

  show_recepies: ->
    @app.navigate "recipes/#{@model.get('name')}", trigger: true

  _render: ->
    @$el.html @template @model.toJSON()

  _position: ->
    @app.frame.content_area.html @el

  _render_production_chart: ->
    chart_data = @model.production_chart_data()


    if @model._sum_chart_data('production')
      ctx = @$("#production-chart").get(0).getContext("2d")
      new Chart(ctx).Doughnut(chart_data)
    else
      @$('.production.header').remove()
      @$('#production-chart').remove()

  _render_in_season_chart: ->
    chart_data = @model.in_season_chart_data()
    ctx = @$("#in-season-chart").get(0).getContext("2d")
    new Chart(ctx).Radar(chart_data, {scaleOverride: true, scaleStartValue: 0, scaleStepWidth: 1, scaleSteps: 1})


  _set_width_of_charts: ->
    calculated_width = @browser_width * 0.8
    @$('#production-chart').width calculated_width
    @$("#in-season-chart").width calculated_width

    @$('#production-chart').height calculated_width
    @$("#in-season-chart").height calculated_width















