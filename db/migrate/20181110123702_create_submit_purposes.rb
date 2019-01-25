class CreateSubmitPurposes < ActiveRecord::Migration[5.2]
  def change
    create_table :submit_purposes do |t|
      t.references :submit, foreign_key: true
      t.references :purpose, foreign_key: true

      t.timestamps
    end
  end
end
