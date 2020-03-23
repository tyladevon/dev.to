class CreateArticleCollection < ActiveRecord::Migration[5.2]
  def change
    create_table :article_collections do |t|
      t.references :user_collection, foreign_key: true
      t.references :article, foreign_key: true
      t.timestamps
    end
  end
end
