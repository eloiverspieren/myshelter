class AddRefugeSkuToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :refuge_sku, :string
  end
end
