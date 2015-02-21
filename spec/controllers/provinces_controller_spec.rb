require 'rails_helper'

RSpec.describe ProvincesController, :type => :controller do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
    it "loads all of the products into @products" do
      prov1, prov2 = Province.create!(name: "British Columbia"), Province.create!(name: "Ontario")
      get :index

      expect(assigns(:provinces)).to match_array([prov1, prov2])
    end
  end

end
