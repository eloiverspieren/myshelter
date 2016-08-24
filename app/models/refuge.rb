class Refuge < ApplicationRecord
  belongs_to :user
  has_many :availabilities, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :guides
  has_many :hikings, through: :refuge_to_hike
  has_many :reviews, dependent: :destroy
  mount_uploader :photo, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
