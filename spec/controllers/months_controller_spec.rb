require 'rails_helper'

RSpec.describe MonthsController, :type => :controller do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
    it "loads all of the products into @products" do
      month1, month2 = Month.create!(name: "January"), Month.create!(name: "February")
      get :index

      expect(assigns(:months)).to match_array([month1, month2])
    end
  end

end
