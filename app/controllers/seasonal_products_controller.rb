class SeasonalProductsController < ApplicationController
  def show
    if params[:month]
      month = params[:month]
    else
      @date = Date.today
      month_name = @date.strftime("%B")
    end
    @province = Province.find(params[:id])
    @month = Month.where(name: month_name).first
    @products = LocalSeasonalProduct.where(province: @province, month: @month)
    render json: @products
  end
end
