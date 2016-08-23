class AddUserRefToRefuges < ActiveRecord::Migration[5.0]
  def change
    add_reference :refuges, :user, foreign_key: true
  end
end
