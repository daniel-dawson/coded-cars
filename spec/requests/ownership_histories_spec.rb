require 'rails_helper'

RSpec.describe "OwnershipHistories", type: :request do
  describe "GET /ownership_histories" do
    it "works! (now write some real specs)" do
      get ownership_histories_path
      expect(response).to have_http_status(200)
    end
  end
end
