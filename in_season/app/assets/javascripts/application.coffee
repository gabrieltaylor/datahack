#= require ./namespace
#= require moment
#= require jquery
#= require jquery_ujs
#= require jquery.transit
#= require jquery.fastClick
#= require jquery.event.move
#= require jquery.event.swipe
#= require underscore
#= require backbone
#= require backbone.localStorage
#= require underscore_string
#= require_tree ./models
#= require_tree ./collections
#= require_tree ./tpl
#= require_tree ./views
#= require_self



window.addEventListener 'load', =>
  FastClick.attach(document.body)
, false


class App.Controller extends Backbone.Router

  initialize: (options = {}) ->
    @on_client = options.on_client
    @server_url = options.server_url || "http://localhost:5000"

    @load_resources =>
      Backbone.history.start()

  load_resources : (success_callback) ->
    console.log "Loading Resoruces...if needed"
    success_callback()

  routes:
    "" : "in_season"

  in_season: ->
    alert "Lets see whats in season"

