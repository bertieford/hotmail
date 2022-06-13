class RemovePriceFromProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :price, :integer
  end
end
