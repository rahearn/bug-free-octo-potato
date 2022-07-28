require "rails_helper"

RSpec.describe "Sessions", type: :request do
  describe "GET /logout" do
    it "redirects to root_path" do
      get "/logout"
      expect(response).to redirect_to(root_path)
    end
  end
end
