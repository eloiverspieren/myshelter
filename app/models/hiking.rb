class Hiking < ApplicationRecord
  has_many :refuges, through: :refuge_to_hike
  has_many :reviews, dependent: :destroy
  mount_uploader :photo, PhotoUploader

end
