require "rails_helper"

RSpec.describe "ReadingListItems", type: :request do
  let(:user) { create(:user) }
  let(:separate_user) { create(:user) }
  let(:article) { create(:article, user_id: user.id) }
  let(:reaction) { create(:reaction, reactable: article, user_id: user.id) }
  let(:unauthorized_reaction) { create(:reaction, reactable: article, user_id: separate_user.id) }

  before do
    sign_in user
  end

  describe "GET reading list" do
    it "returns reading list page" do
      get "/readinglist"
      expect(response.body).to include("Reading List")
    end
  end
  # lines 21-36 of reading_list_items is applicable to our 'collections' track
  # will be altering the describe block based on the changed functionality. Will also
  # be adding more specs for additional 'collections' functionality

  describe "PUT reading_list_items/:id" do
    it "returns archives item if no param" do
      put "/reading_list_items/#{reaction.id}"
      expect(reaction.reload.status).to eq("archived")
    end

    it "unarchives an item if current_status is passed as archived" do
      put "/reading_list_items/#{reaction.id}", params: { current_status: "archived" }
      expect(reaction.reload.status).to eq("valid")
    end

    it "raises NotAuthorizedError if current_user is not the reaction user" do
      expect { put "/reading_list_items/#{unauthorized_reaction.id}" }.to raise_error Pundit::NotAuthorizedError
    end
  end
end
