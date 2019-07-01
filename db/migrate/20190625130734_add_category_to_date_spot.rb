class AddCategoryToDateSpot < ActiveRecord::Migration[5.2]
  def change
    add_column :date_spots, :category, :string
  end
end
