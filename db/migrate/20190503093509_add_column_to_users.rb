class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string, null: false, default: ""
    add_column :users, :age, :string, null: false, default: ""
    add_column :users, :sex, :string, null: false, default: ""
    add_column :users, :profile, :text
    add_column :users, :user_id, :integer
  end
end
