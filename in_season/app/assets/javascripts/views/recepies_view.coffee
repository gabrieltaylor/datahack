class App.Views.RecipesView extends Backbone.View
  template: JST['tpl/product_recipes']
  className: 'recipes'

  initialize: (options) ->
    @product_id = options.product_id
    @app = options.app
    @frame = options.frame
    @product_name = options.product_name
    @recipes = new App.Collections.Recipes
    @page = 1
    @_get_recepies =>
      @app = options.app
      @_render()
      @_position()
      @_render_recipes()


  events:
    'click .back' : 'back'
    'click .load-more-recipes' : "load_more_recipes"
    "click .logo-small": "visit_home_page"

  visit_home_page: ->
    @app.navigate '', trigger: true

  back: ->
    @app.navigate 'seasonal-products/' + @product_id, trigger: true

  _render: ->
    @$el.html @template()
    @$recipes_lists = @$('.recipes-lists')

  _position: ->
    $('#app-wrapper').html @el

  _render_recipes: ->
    @recipes.each (recipe) =>
      new App.Views.RecipeView
        wrapper: @$recipes_lists, model: recipe, app: @app, parent: this

    @_init_masonry()

  _get_recepies: (callback)->
    $.ajax
      url: @app.server_url + '/recipes'
      data: {
        product_name: @product_name
        page: @page
      }
      dataType: 'json'
      beforeSend: => @app.show_loading()
      success:(response) =>
        @recipes.reset response.recipes
      error: (error) => console.log "Error"
      complete: =>
        callback()




  load_more_recipes: ->
    @page += 1
    @_get_recepies =>
      @_render_recipes()



  _init_masonry: ->
    imagesLoaded @$recipes_lists, =>
      new Masonry @$recipes_lists[0], {
        itemSelector: '.recipe-item'
      }
      @app.hide_loading()







