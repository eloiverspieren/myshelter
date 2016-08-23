class Hiking < ApplicationRecord
  has_many :refuges, through: :refuge_to_hike
  has_many :reviews, dependent: :destroy
end
