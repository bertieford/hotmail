class RemoveCompleteFromOrders < ActiveRecord::Migration[7.0]
  def change
    remove_column :orders, :complete, :boolean
  end
end
