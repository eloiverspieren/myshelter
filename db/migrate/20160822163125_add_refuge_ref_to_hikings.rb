class AddRefugeRefToHikings < ActiveRecord::Migration[5.0]
  def change
    add_reference :hikings, :refuge, foreign_key: true
  end
end
