class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.integer :patron_id
      t.string :password_digest
      t.integer :roles_mask
      t.integer :display_order
      t.date :retired_date
      t.string :email
    end
  end
end
