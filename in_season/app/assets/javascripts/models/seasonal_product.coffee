class App.Models.SeasonalProduct extends Backbone.Model

  format_chart_data: ->
    data = []
    color_index = 0
    _(@get('provinces')).each (value, province) =>
      data.push {
        value: value,
        color: @_province_color(province),
        highlight: @_province_color(province),
        label: province
      }

    data


  _province_color: (name) ->
    console.log name
    {
      "Alberta": '#1abc9c'
      "British Columbia": "#1abc9c"
      "Manitoba": "#1abc9c"
      "New Brunswick": "#1abc9c"
      "Newfoundland and Labrador": "#1F3A93"
      "Nova Scotia": '#C8F7C5'
      "Ontario": "#1abc9c"
      "Prince Edward Island": "#BFBFBF"
      "Quebec": "#1abc9c"
      "Saskatchewan": "#96281B"
    }[name]




