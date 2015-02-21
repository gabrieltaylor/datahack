class App.Views.InSeason extends Backbone.View
  template: JST['tp/in-season']
  className: 'in-season-list'
  tagName: 'ul'

  initialize: (options) ->
    @app = options.app

  _render: ->
    @$el.html @template()

  _position: ->
    @app.$content_area.append @el


