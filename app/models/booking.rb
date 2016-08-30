class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :refuge
  monetize :amount_cents

  def pay!
    self.status = 3
    self.save!
  end
end
