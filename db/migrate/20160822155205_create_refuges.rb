class CreateRefuges < ActiveRecord::Migration[5.0]
  def change
    create_table :refuges do |t|
      t.string :name
      t.string :picture
      t.integer :capacity
      t.string :address
      t.integer :day_price
      t.string :description
      t.float :lat
      t.float :lon
      t.integer :altitude
      t.string :range

      t.timestamps
    end
  end
end
