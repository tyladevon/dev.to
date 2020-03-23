require "rails_helper"

RSpec.describe "Collection", type: :feature do
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

  describe "visit collections page" do
    it "returns colection page" do
      visit "/collections"
      expect(page).to have_content("Collections")
      expect(page).to have_content(@collection.title.to_s)
    end

    xit "visit collection show page" do
      visit "/collections"
      click_on @collection.title.to_s
      expect(page).to have_current_path("/collections/#{@collection.id}", ignore_query: true)
      expect(page).to have_content(@collection.title.to_s)
      expect(page).to have_content(@article_1.title.to_s)
      expect(page).to have_content(@article_2.title.to_s)
      expect(page).to have_content(@article_3.title.to_s)
    end
  end
end
