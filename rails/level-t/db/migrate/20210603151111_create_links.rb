class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :titre
      t.string :body
      t.string :name

      t.timestamps
    end
  end
end
