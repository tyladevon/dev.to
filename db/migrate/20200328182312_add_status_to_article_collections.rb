class AddStatusToArticleCollections < ActiveRecord::Migration[5.2]
  def change
    add_column :article_collections, :status, :string, default: "Unread"
  end
end
