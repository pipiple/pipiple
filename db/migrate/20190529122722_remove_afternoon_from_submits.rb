class RemoveAfternoonFromSubmits < ActiveRecord::Migration[5.2]
  def change
    remove_column :submits, :afternoon, :string
    remove_column :submits, :afternoon_body, :text
    remove_column :submits, :afternoon_image, :string
    remove_column :submits, :afternoon_URL, :string
  end
end
