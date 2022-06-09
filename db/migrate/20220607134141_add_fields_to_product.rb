class AddFieldsToProduct < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :name, :string
    add_column :products, :description, :text
    add_column :products, :manufacturer, :string
    add_column :products, :price, :float
    add_column :products, :ingredients, :text
    add_column :products, :bottle_size, :string
  end
end
