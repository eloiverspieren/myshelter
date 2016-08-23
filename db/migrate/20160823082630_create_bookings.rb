class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.date :start_day
      t.date :end_day
      t.integer :hikers_nb
      t.references :user, foreign_key: true
      t.references :refuge, foreign_key: true

      t.timestamps
    end
  end
end
