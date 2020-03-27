class UserCollection < ApplicationRecord
  validates :title, presence: true, uniquness: { scope: :user_id }
  belongs_to :user
  has_many :article_collections
  has_many :articles, through: :article_collections
end
