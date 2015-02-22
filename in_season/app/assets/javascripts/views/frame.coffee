class App.Views.Frame extends Backbone.View
  template: JST['tpl/frame']

  initialize: (options) ->
    @app = options.app

    @_render()
    @_position()

  events:
    'click .province' : 'select_province'
    'change #province' : 'change_province'

  select_province: ->
    @$('#provinces').focus()

  change_province: (e) ->
    @app.province = @$('#provinces').val()

  _render: ->
    @$el.html @template province: @app.province
    @content_area = @$('.content-area')

  _position: ->
    @app.$content_area.html @el
