class Refuge < ApplicationRecord
  belongs_to :user
  has_many :availabilities, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :guides
  has_many :refuge_to_hikes
  has_many :hikings, through: :refuge_to_hikes
  has_many :reviews, dependent: :destroy
  mount_uploader :photo, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def self.search(search)
    if search
     return self.near(search, 50)
    else
      return Refuge.all
    end
    return nil
  end
end
