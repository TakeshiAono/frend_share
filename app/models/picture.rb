class Picture < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  validates :coment, presence: true

end
