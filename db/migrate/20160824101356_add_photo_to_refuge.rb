class AddPhotoToRefuge < ActiveRecord::Migration[5.0]
  def change
    add_column :refuges, :photo, :string
  end
end
