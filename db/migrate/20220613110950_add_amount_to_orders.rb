class AddAmountToOrders < ActiveRecord::Migration[7.0]
  def change
    add_monetize :orders, :amount, curerncy: { present: false }
    add_column :orders, :state, :string, default: 'pending'
  end
end
