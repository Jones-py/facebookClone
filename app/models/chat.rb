class Chat < ApplicationRecord
  validates :post, presence: true, length: {minimum:1, maximum: 150}
end
