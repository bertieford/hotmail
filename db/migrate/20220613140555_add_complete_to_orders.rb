class AddCompleteToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :complete, :boolean, default: false
  end
end
