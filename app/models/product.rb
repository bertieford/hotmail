class Product < ApplicationRecord
  has_many :baskets
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :ingredients, presence: true
  validates :bottle_size, presence: true
  validates :manufacturer, presence: true
  validates :price, presence: true
  has_one_attached :photo
end
