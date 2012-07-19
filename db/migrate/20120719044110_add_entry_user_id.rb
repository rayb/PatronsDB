class AddEntryUserId < ActiveRecord::Migration
  def change
    add_column :activities, :entry_user_id, :integer
    add_column :donations, :entry_user_id, :integer
    add_column :patrons, :entry_user_id, :integer
    add_column :performances, :entry_user_id, :integer
    add_column :plays, :entry_user_id, :integer
    add_column :promotions, :entry_user_id, :integer
    add_column :promotion_types, :entry_user_id, :integer
    add_column :purchases, :entry_user_id, :integer
    add_column :raffles, :entry_user_id, :integer
    add_column :roles, :entry_user_id, :integer
    add_column :sources, :entry_user_id, :integer
    add_column :users, :entry_user_id, :integer
  end
end
