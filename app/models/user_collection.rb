class UserCollection < ApplicationRecord
  #validates :title, presence: true
  belongs_to :user
  has_many :article_collections
  has_many :articles, through: :article_collections
  validates :title, presence: true
  validates_uniqueness_of :title, scope: :user_id, case_sensitive: false
end
