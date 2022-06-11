class Feed < ApplicationRecord
  byebug
  mount_uploader :image, ImageUploader
end
