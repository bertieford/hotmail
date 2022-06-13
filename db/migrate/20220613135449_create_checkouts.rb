class CreateCheckouts < ActiveRecord::Migration[7.0]
  def change
    create_table :checkouts do |t|
      t.string :state
      t.string :checkout_session_id
      t.references :user, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true
      t.monetize :amount, currency: { present: false }
      t.timestamps
    end
  end
end
