class DropTestPatrons < ActiveRecord::Migration

  def change
    drop_table :test_patrons
  end
end
