require 'rails_helper'

RSpec.describe SeasonalProductsController, :type => :controller do
  describe "GET #show" do
    it "responds successfully with an HTTP 200 status code" do
      get :show
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
    # it "loads all of the products into @products" do
    #   prov1, prov2 = Province.create!(name: "British Columbia"), Province.create!(name: "Ontario")
    #   get :index

    #   expect(assigns(:provinces)).to match_array([prov1, prov2])
    # end
  end
end
