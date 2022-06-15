class Product < ApplicationRecord
  has_many :order_products
  has_many :orders, through: :order_products
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :description, presence: true
  # validates :ingredients, presence: true
  # validates :bottle_size, presence: true
  validates :manufacturer, presence: true
  validates :price, presence: true
  has_one_attached :photo
  monetize :price_cents

  include PgSearch::Model
  pg_search_scope :search_by_name,
    against: [ :name ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
