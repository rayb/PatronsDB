class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.date :start_date
      t.string :name
      t.string :notes

      t.timestamps
    end
  end
end
