class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :name
      t.date :start_date
      t.string :play_id
      t.string :performance_id

      t.timestamps
    end
  end
end
