class App.Views.Frame extends Backbone.View
  template: JST['tpl/frame']

  initialize: (options) ->
    @_render()
    @_position()

  _render: ->
    @$el.html @template()

  _position: ->
    $('body').append @el
