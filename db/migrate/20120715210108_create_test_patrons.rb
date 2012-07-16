class CreateTestPatrons < ActiveRecord::Migration
  def change
    create_table :test_patrons do |t|
      t.string :last
      t.string :first
      t.string :title_org
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.string :source
      t.string :notes
      t.string :company_notes

      t.timestamps
    end
  end
end
