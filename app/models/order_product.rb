class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product
  validates :product, uniqueness: { scope: :order }
end
