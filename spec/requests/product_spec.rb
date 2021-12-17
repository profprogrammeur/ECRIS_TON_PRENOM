require 'rails_helper'

RSpec.describe "Products", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/product/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/product/create"
      expect(response).to have_http_status(:success)
    end
  end

end
