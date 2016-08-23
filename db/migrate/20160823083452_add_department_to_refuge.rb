class AddDepartmentToRefuge < ActiveRecord::Migration[5.0]
  def change
    add_column :refuges, :department, :string
  end
end
