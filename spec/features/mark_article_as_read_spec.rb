require "rails_helper"

RSpec.describe "mark article as read", type: :feature do
  before do
    user = create(:user)
    @collection = create(:user_collection, user_id: user.id)
    @article_1 = create(:article)
    @article_2 = create(:article)
    @article_3 = create(:article)
    @collection.articles << @article_1
    @collection.articles << @article_2
    @collection.articles << @article_3
    allow_any_instance_of(SessionCurrentUser).to receive(:session_current_user_id).and_return(user.id)
  end

  describe "visit collection's show page" do
    it "click on article" do
      visit "/collections/#{@collection.id}"
      expect(page).to have_content(@collection.title.to_s)
      expect(page).to have_content(@article_1.title.to_s)
      expect(page).to have_content(@article_2.title.to_s)
      expect(page).to have_content(@article_3.title.to_s)

      expect(page).to_not have_content("Read")
      save_and_open_page
      first('.item').click
      visit "/collections/#{@collection.id}"
      expect(page).to have_content("Read")
    end
  end
end
