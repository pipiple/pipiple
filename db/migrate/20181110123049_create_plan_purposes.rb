class CreatePlanPurposes < ActiveRecord::Migration[5.2]
  def change
    create_table :plan_purposes do |t|
      t.references :plan, foreign_key: true
      t.references :purpose, foreign_key: true

      t.timestamps
    end
  end
end
