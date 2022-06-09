class AddProductToOrderProduct < ActiveRecord::Migration[7.0]
  def change
    add_reference :order_products, :product, null: false, foreign_key: true
    add_column :order_products, :qty, :integer, :default => 1
  end
end
