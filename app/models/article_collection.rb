class ArticleCollection < ApplicationRecord
  belongs_to :user_collection
  belongs_to :article
end
