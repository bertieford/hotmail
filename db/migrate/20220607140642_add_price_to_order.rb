class AddPriceToOrder < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :price, :string
  end
end
