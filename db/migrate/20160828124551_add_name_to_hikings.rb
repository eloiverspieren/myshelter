class AddNameToHikings < ActiveRecord::Migration[5.0]
  def change
    add_column :hikings, :name, :string
  end
end
