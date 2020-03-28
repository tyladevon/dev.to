require "rails_helper"

RSpec.describe "Article saved to Collection", type: :feature do
  before do
    user = create(:user)
    @collection = create(:user_collection, user_id: user.id)
    @article_1 = create(:article)
    @article_2 = create(:article)
    @article_3 = create(:article)
    allow_any_instance_of(SessionCurrentUser).to receive(:session_current_user_id).and_return(user.id)
  end

  # describe "visit home page" do
  #   it "can add article to a collection" do
	# 		visit "/"
			
	# 		within ".articles-list" do
	# 			first(:button, "SAVE").click
	# 		end

  #     visit "/collections"
  #     click_on @collection.title.to_s

  #     expect(page).not_to be_empty
  #   end
  # end
end