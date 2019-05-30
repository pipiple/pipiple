class RemoveLunchFromSubmits < ActiveRecord::Migration[5.2]
  def change
    remove_column :submits, :lunch, :string
    remove_column :submits, :lunch_body, :text
    remove_column :submits, :lunch_image, :string
    remove_column :submits, :lunch_URL, :string
  end
end
