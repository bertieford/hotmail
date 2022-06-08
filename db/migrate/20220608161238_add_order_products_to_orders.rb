class AddOrderProductsToOrders < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :order_products, foreign_key: true
  end
end
