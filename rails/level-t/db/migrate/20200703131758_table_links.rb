class TableLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links
    add_column :links, :author, :string
    add_column :links, :title, :string
    add_column :links, :body, :text
  end
end
