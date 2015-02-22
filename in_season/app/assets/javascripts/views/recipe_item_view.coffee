class App.Views.RecipeView extends Backbone.View

  template: JST['tpl/recipe_item']
  className: 'recipe-item'
  tagName: 'li'

  initialize: (options) ->
    @app = options.app
    @$wrapper = options.wrapper
    @_render()
    @_position()

  events:
    'click' : "show_recipe_details"

  show_recipe_details: (e) ->
    window.open @model.get('source_url')

  _render: ->
    @$el.html @template @model.toJSON()

  _position: ->
    @$wrapper.append @el




