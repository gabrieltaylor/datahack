class SeasonalProductsController < ApplicationController
  def index
    if params[:month]
      month = params[:month].capitalize
    else
      @date = Date.today
      month = @date.strftime("%B")
    end
    @province = Province.find(id: params[:province].to_i)
    @products = Product.harvested_in(month: month, province: @province)
    render json: @products
  end
end
