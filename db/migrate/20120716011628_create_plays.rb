class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.integer :performances

      t.timestamps
    end
  end
end
