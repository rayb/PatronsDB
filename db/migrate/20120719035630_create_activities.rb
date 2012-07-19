class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :role_id
      t.integer :patron_id
      t.integer :play_id
      t.integer :performance_id
      t.decimal :hours
      t.date :start_date
      t.date :end_date
      t.string :notes
    end
  end
end
