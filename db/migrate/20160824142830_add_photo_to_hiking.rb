class AddPhotoToHiking < ActiveRecord::Migration[5.0]
  def change
    add_column :hikings, :photo, :string
  end
end
