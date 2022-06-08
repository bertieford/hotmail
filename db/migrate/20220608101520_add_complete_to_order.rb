class AddCompleteToOrder < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :complete, :boolean
  end
end
