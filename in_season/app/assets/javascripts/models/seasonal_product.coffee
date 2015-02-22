class App.Models.SeasonalProduct extends Backbone.Model

  production_chart_data: ->
    @_production_chart_data = []
    color_index = 0
    _(@get('provinces')).each (value, province) =>
      @_production_chart_data.push {
        value: value,
        color: @_province_color(province) ,
        highlight: @_province_color(province, 0.7),
        label: province
      }

    @_production_chart_data

  in_season_chart_data: (province) ->
    in_season_chart_data = {}
    in_season_chart_data.labels = ["January","February","March","April","May","June","July","August","September","October","November","December"]
    color_index = 0
    data = []
    _(in_season_chart_data.labels).each (month) =>
      if month in @get('months')
        data.push 1
      else
        data.push 0

    in_season_chart_data.datasets = [{
      fillColor: "rgba(151,187,205,0.2)",
      strokeColor: "rgba(151,187,205,1)",
      pointColor: "rgba(151,187,205,1)",
      pointStrokeColor: "#fff",
      pointHighlightFill: "#fff",
      pointHighlightStroke: "rgba(151,187,205,1)",
      data: data
    }]

    in_season_chart_data


  _province_color: (name, opacity= 1) ->
    rgb = {
      "Alberta": '210, 77, 87'
      "British Columbia": "3, 166, 120"
      "Manitoba": "241, 169, 160"
      "New Brunswick": "154, 18, 179"
      "Newfoundland and Labrador": "102, 51, 153"
      "Nova Scotia": '135, 211, 124'
      "Ontario": "65, 131, 215"
      "Prince Edward Island": "150, 40, 27"
      "Quebec": "244, 208, 63"
      "Saskatchewan": "242, 121, 53"
    }[name]

    "rgba(#{rgb}, #{opacity})"

  _sum_chart_data: (name)->
    chart_data = @["_#{name}_chart_data"]
    total_value = 0
    _(chart_data).each (data_point) =>
      total_value += data_point.value

    total_value





