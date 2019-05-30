class CreateSubmits < ActiveRecord::Migration[5.2]
  def change
    create_table :submits do |t|
      t.string :name
      t.string :area
      t.string :mood
      t.string :price
      t.text :overview
      t.integer :user_id
      t.timestamps
    end
  end
end
