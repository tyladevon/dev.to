require "rails_helper"

RSpec.describe "Api::V0::UserCollectionsController", type: :request do
  before do
    user = create(:user)
    create(:user_collection, user_id: user.id)
    create(:user_collection, user_id: user.id)
    create(:user_collection, user_id: user.id)
    allow_any_instance_of(SessionCurrentUser).to receive(:session_current_user_id).and_return(user.id)
  end

  describe "GET /api/user_collections" do
    it "returns collections for the user" do
      get '/api/user_collections'

      expect(response).to be_successful

      collections = JSON.parse(response.body)['collections']
      expect(collections.count).to eq(4)
    end
  end
end
