class CreatePatrons < ActiveRecord::Migration
  def change
    create_table :patrons do |t|
      t.string :last
      t.string :first
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.integer :source_id
      t.string :address_key
      t.string :ticket_notes
      t.date :start_date
      t.date :retiring_date
      t.boolean :is_cast
      t.boolean :is_industry
      t.boolean :is_press
      t.boolean :is_patron
      t.string :notes

      t.timestamps
    end
  end
end
