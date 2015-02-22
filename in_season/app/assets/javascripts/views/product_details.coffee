class App.Views.ProductDetials extends Backbone.View

  template: JST['tpl/product_details']
  className: 'product-detials'

  initialize: (options) ->
    @frame = options.frame

    @_fetch_resource =>
      @app = options.app
      @$wrapper = options.wrapper
      @_render()
      @_position()



  events:
    'click' : 'show_recepies'

  show_recepies: ->
    @app.navigate "recipes/#{@model.get('name')}", trigger: true

  _render: ->
    @$el.html @template @model.toJSON()

  _position: ->
    @app.frame.content_area.html @el

  _fetch_resource: (callback) ->
    @model = new Backbone.Model({name: "apricot", details: "some details here"})
    callback()













