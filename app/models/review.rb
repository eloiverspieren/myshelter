class Review < ApplicationRecord
  belongs_to :user
  belongs_to :reviewable, polymorphic: true
  mount_uploader :photo, PhotoUploader
end
