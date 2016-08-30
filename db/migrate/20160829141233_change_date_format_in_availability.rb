class ChangeDateFormatInAvailability < ActiveRecord::Migration[5.0]
  def change
    change_column :availabilities, :start_day, :datetime
    change_column :availabilities, :end_day, :datetime
  end
end
