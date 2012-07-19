class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.string :patron_id
      t.date :date
      t.decimal :amount
      t.integer :promotion_id
      t.string :notes

      t.timestamps
    end
  end
end
