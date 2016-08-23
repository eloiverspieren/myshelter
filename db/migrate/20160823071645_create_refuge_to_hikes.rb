class CreateRefugeToHikes < ActiveRecord::Migration[5.0]
  def change
    create_table :refuge_to_hikes do |t|
      t.references :hiking, foreign_key: true
      t.references :refuge, foreign_key: true

      t.timestamps
    end
  end
end
