require 'rails_helper'

RSpec.describe ProductsController, :type => :controller do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
    it "loads all of the products into @products" do
      prod1, prod2 = Product.create!(name: "Orange"), Product.create!(name: "Apple")
      get :index

      expect(assigns(:products)).to match_array([prod1, prod2])
    end
  end
end
