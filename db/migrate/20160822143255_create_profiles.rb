class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :avatar_picture
      t.string :email
      t.string :phone
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
