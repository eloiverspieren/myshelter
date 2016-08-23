class CreateGuides < ActiveRecord::Migration[5.0]
  def change
    create_table :guides do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :picture
      t.references :refuge, foreign_key: true

      t.timestamps
    end
  end
end
