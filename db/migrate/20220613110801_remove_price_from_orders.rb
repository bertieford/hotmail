class RemovePriceFromOrders < ActiveRecord::Migration[7.0]
  def change
    remove_column :orders, :price
  end
end
