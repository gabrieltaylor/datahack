class ProductsController < ApplicationController
  def index
    if params[:type] == "fruits"
      @products = Product.fruits
    elsif params[:type] == "vegetables"
      @products = Product.vegetables
    else
      @products = Product.all
    end
    render json: @products
  end
end
