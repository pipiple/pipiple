class CreateDateSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :date_spots do |t|
      t.integer :category_id
      t.integer :submit_id
      t.string :name
      t.text :description
      t.string :url
      t.string :image

      t.timestamps
    end
  end
end
