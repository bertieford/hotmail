class ChangePriceInOrdersToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :orders, :price, :integer
  end
end
