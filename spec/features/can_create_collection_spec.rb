require "rails_helper"

RSpec.describe "Collection", type: :feature do
  before :each do
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
      expect(page).to have_content("#{@collection.title}")
    end

    xit "visit collection show page" do
      visit "/collections"
      click_on "#{@collection.title}"
      expect(current_path).to eq("/collections/#{@collection.id}")
      expect(page).to have_content("#{@collection.title}")
      expect(page).to have_content("#{@article_1.title}")
      expect(page).to have_content("#{@article_2.title}")
      expect(page).to have_content("#{@article_3.title}")
    end
  end
end
