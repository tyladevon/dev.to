class CreateUserCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :user_collections do |t|
      t.string :title
      t.references :user, foreign_key: true
      t.timestamps

      add_index(:user_collections, :user)
    end
  end
end
