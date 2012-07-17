class ChangeFields < ActiveRecord::Migration
  def change
    add_column :purchases, :performance_id,  :integer
    remove_column :purchases, :purchase
  end

end
