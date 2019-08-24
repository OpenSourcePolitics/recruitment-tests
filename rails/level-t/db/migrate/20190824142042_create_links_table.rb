class CreateLinksTable < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :link
      t.string :title
      t.text :description
      t.string :name
    end
  end
end
