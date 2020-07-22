class AddUserIdToLink < ActiveRecord::Migration[5.2]
  def change
    add_column :links, :user_id, :integer
    add_index :links, :user_id
  end
end
