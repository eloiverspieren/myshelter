class DeleteForeignKey < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :reviews, column: :hiking_id
    remove_foreign_key :reviews, column: :refuge_id
  end
end
