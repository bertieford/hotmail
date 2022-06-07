class AddAddressToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :address_line_1, :string
    add_column :users, :address_line_2, :string
    add_column :users, :city, :string
    add_column :users, :county, :string
    add_column :users, :postcode, :string
  end
end
