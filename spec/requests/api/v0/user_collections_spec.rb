require "rails_helper"

RSpec.describe "Api::V0::UserCollectionsController", type: :request do
  before do
    @user = create(:user)
    create(:user_collection, user_id: @user.id)
    create(:user_collection, user_id: @user.id)
    create(:user_collection, user_id: @user.id)
  end

  describe "GET /api/user_collections" do
    it "returns collections for the user" do
      get '/api/user_collections', params: { user_id: @user.id }

      expect(response).to be_successful
      
      collections = JSON.parse(response.body)['collections']
      expect(collections.count).to eq(4)
    end
  end
end
