class AddProductToOrderProduct < ActiveRecord::Migration[7.0]
  def change
    add_reference :order_products, :product, null: false, foreign_key: true
  end
end
