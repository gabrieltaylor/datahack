class App.Views.HelpGuide extends Backbone.View
  template: JST['tpl/help_guide']
  className: 'help-guide'


  initialize: (options) ->
    @app = options.app
    @_render()
    @_position()

  events:
    'click .back' : 'back'
    "click .logo-small": "visit_home_page"

  visit_home_page: ->
    @app.navigate '', trigger: true

  back: ->
    @app.navigate "", trigger: true

  _render: ->
    @$el.html @template()

  _position: ->
    $('#app-wrapper').html @el