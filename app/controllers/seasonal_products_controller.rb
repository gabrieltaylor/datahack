class SeasonalProductsController < ApplicationController
  def index
    if params[:month]
      month = params[:month]
    else
      @date = Date.today
      month = @date.strftime("%B")
    end
    province = params[:province]
    @products = Product.harvested_in(month: month, province: province)
    render json: @products
  end
end
