class ChangeStdTypePurchases < ActiveRecord::Migration
  def up
    change_column(:purchases, :start_date_time, :datetime)
  end

  def down
    change_column(:purchases, :start_date_time, :date)
  end
end
