class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.integer :combination1
      t.integer :combination2
      t.integer :combination3
      t.integer :user_id
      t.timestamps
    end
  end
end
