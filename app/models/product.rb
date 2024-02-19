class Product < ApplicationRecord
  validates :title, :description, :image_url, presence: true
  validates :title, uniqueness: true
  validates :title, length: { minimum: 10 }
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\z}i,
    message: 'must be for a GIF, JPG or PNG image.'
  }
  validates :price, numericality: { greater_than_or_equal_to: 0.01, message: "must be higher. We won't make money that way" }
end
