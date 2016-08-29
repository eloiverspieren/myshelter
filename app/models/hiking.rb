class Hiking < ApplicationRecord
  has_many :refuge_to_hikes
  has_many :refuges, through: :refuge_to_hikes

  has_many :reviews, as: :reviewable, dependent: :destroy
  mount_uploader :photo, PhotoUploader

end
