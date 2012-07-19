class CreateRaffles < ActiveRecord::Migration
  def change
    create_table :raffles do |t|
      t.string :play_id
      t.string :performance_id
      t.string :patron_id

      t.timestamps
    end
  end
end
