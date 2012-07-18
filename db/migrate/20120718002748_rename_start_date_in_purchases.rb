class RenameStartDateInPurchases < ActiveRecord::Migration
  def change
    rename_column :purchases, :start_date, :start_date_time
  end
end
