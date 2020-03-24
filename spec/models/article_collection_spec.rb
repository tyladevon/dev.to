require "rails_helper"

RSpec.describe ArticleCollection, type: :model do
  describe "relationships" do
    it { is_expected.to belong_to :user_collection }
    it { is_expected.to belong_to :article }
  end
end
