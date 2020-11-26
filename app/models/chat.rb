class Chat < ApplicationRecord
  validates :post, presence: true, length: {minimum:1, maximum: 300}
  
  mount_uploader :image, ImageUploader
end
