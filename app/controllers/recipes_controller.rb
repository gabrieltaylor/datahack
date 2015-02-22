class RecipesController < ApplicationController

  def index
    @recipes = Recipe.get 'http://www.food2fork.com/api/search', http_party_params
    render json: @recipes
  end

  private

   def recipe_params
    params.permit(:product_name, :page)
   end

   def http_party_params
    {
      query: {
        q: recipe_params[:product_name],
        page: recipe_params[:page]

      }

    }
   end
end
