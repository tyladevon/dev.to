require "rails_helper"

RSpec.describe UserCollection, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of :title }
  end

  describe "relationships" do
    it { is_expected.to have_many :article_collections }
    it { is_expected.to have_many(:articles).through(:article_collections) }
    it { is_expected.to belong_to :user }
  end
end
