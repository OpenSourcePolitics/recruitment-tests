class RemoveColumnFromTableName < ActiveRecord::Migration[5.2]
  def change

    remove_column :links, :link


  end
end
