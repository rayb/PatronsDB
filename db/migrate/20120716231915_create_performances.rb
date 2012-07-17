class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.string :play_id
      t.datetime :start_date_time
      t.string :type

      t.timestamps
    end
  end
end
