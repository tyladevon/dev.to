class AddIndexToUserCollection < ActiveRecord::Migration[5.2]
  disable_ddl_transaction!
  def change
    add_index :user_collections, [ :user_id, :title ], :unique => true, algorithm: :concurrently
  end
end
