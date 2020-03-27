class UserCollection < ApplicationRecord
  validates :title, presence: true
  validates_uniqueness_of :title, scope: :user_id, case_sensitive: false  
  belongs_to :user
  has_many :article_collections
  has_many :articles, through: :article_collections
end
