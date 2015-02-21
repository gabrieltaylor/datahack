class App.Views.ProductDetials extends Backbone.View


  template: JST['tpl/product_details']
  className: 'product-detials'

  initialize: (options) ->
    @_fetch_resource =>
      @app = options.app
      @$wrapper = options.wrapper
      @_render()
      @_position()
      # @_get_recepies()


  events:
    'click' : '_get_recepies'
  _render: ->
    @$el.html @template @model.toJSON()

  _position: ->
    @app.$content_area.html @el

  _fetch_resource: (callback) ->
    @model = new Backbone.Model({name: "Apple", details: "some details here"})
    callback()

  _get_recepies: ->
    # API_KEY = "6f264b94325ce43e63c609dc604efbfc"
    # request = new XMLHttpRequest()

    # request.open('get', "http://www.food2fork.com/api/search")
    # request.onload = =>
    #   console.log "ON load fired"
    #   req.responseText
    # request.send q:@model.get('name'), key: API_KEY

    # $.ajax
    #   url: "http://www.food2fork.com/api/search?callback=#{test}"
    #   data: {
    #     q: @model.get('name')
    #     key: API_KEY
    #   }
    #   dataType: 'json'

    #   beforeSend: =>
    #     console.log "making request"

    #   success:(response) =>
    #     alert "It worked"
    #     console.log response

    #   error: (error, x, y, z) =>
    #     console.log error
    #     console.log x
    #     console.log y
    #     console.log z

    #   complete: (response) =>
    #     console.log "completed"
    #     console.log response










