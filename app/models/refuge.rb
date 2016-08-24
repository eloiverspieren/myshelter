class Refuge < ApplicationRecord
  belongs_to :user
  has_many :availabilities, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :guides
  has_many :hikings, through: :refuge_to_hike
  mount_uploader :photo, PhotoUploader

end
