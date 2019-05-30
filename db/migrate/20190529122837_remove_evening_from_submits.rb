class RemoveEveningFromSubmits < ActiveRecord::Migration[5.2]
  def change
    remove_column :submits, :evening, :string
    remove_column :submits, :evening_body, :text
    remove_column :submits, :evening_image, :string
    remove_column :submits, :evening_URL, :string
  end
end
