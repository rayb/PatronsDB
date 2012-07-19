class CleanUpFields < ActiveRecord::Migration
  def change
    add_column :promotions, :promotion_type_id, :integer
    add_column :purchases, :patron_id, :integer
    add_column :patrons, :organization, :string
    rename_column :purchases, :ticket_id, :ticket_number
  end
end
