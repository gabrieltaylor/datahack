class App.Views.ProductDetials extends Backbone.View


  template: JST['tpl/product_details']
  className: 'product-detials'

  initialize: (options) ->
    @_fetch_resource =>
      @app = options.app
      @$wrapper = options.wrapper
      @_render()
      @_position()


  _render: ->
    console.log @model.toJSON()
    @$el.html @template @model.toJSON()

  _position: ->
    @app.$content_area.html @el

  _fetch_resource: (callback) ->
    @model = new Backbone.Model({name: "Apple", details: "some details here"})
    callback()



