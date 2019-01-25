class CreateSubmits < ActiveRecord::Migration[5.2]
  def change
    create_table :submits do |t|
      t.string :name
      t.string :area
      t.string :mood
      t.string :price
      t.text :overview
      t.string :lunch
      t.text :lunch_body
      t.string :lunch_image
      t.string :lunch_URL
      t.string :afternoon
      t.text :afternoon_body
      t.string :afternoon_image
      t.string :afternoon_URL
      t.string :evening
      t.text :evening_body
      t.string :evening_image
      t.string :evening_URL
      t.string :dinner
      t.text :dinner_body
      t.string :dinner_image
      t.string :dinner_URL
      t.integer :user_id
      t.timestamps
    end
  end
end
