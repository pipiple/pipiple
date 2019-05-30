class RemoveDinnerFromSubmits < ActiveRecord::Migration[5.2]
  def change
    remove_column :submits, :dinner, :string
    remove_column :submits, :dinner_body, :text
    remove_column :submits, :dinner_image, :string
    remove_column :submits, :dinner_URL, :string
  end
end
