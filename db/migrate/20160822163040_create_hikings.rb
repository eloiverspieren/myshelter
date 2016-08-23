class CreateHikings < ActiveRecord::Migration[5.0]
  def change
    create_table :hikings do |t|
      t.integer :difficulty
      t.string :range
      t.string :description
      t.string :picture

      t.timestamps
    end
  end
end
