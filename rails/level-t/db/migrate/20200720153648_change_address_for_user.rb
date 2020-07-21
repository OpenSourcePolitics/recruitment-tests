class ChangeAddressForUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :address
    add_column :users, :lat, :float, :default => 0.0
    add_column :users, :lon, :float, :default => 0.0
  end
end
