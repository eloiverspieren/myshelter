class Review < ApplicationRecord
  belongs_to :user
  belongs_to :hiking
  belongs_to :refuge
end
