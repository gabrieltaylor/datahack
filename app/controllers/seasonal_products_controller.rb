class SeasonalProductsController < ApplicationController
  def index
    if params[:month]
      month = params[:month]
    else
      @date = Date.today
      month = @date.strftime("%B")
    end
    @products = Product.harvested_in(month: month)
    render json: @products
  end
end
