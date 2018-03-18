class Customer < ApplicationRecord
  validates :Full_name, presence: true
  mount_uploader :Image, ImageUploader
end
