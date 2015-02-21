class MonthsController < ApplicationController
  def index
    @months = Month.all
    render json: @months
  end
  def show

  end
end
