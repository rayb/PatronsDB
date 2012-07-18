class AddPatronKeyField < ActiveRecord::Migration
  def change
    add_column :test_patrons, :patron_key, :string
  end
end
