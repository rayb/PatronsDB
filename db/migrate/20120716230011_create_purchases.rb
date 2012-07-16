class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :purchase
      t.integer :ticket_id
      t.datetime :order_date
      t.datetime :start_date
      t.string :last_name
      t.string :first_name
      t.string :organization
      t.string :phone
      t.string :email
      t.string :admission
      t.decimal :price
      t.integer :count
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
