class AddPriceToRefuges < ActiveRecord::Migration[5.0]
  def change
    add_monetize :refuges, :price, currency: { present: false }
  end
end
