class CreatePromotionPatrons < ActiveRecord::Migration
  def change
    create_table :promotion_patrons do |t|
      t.integer :promotion_id
      t.integer :patron_id
    end
  end
end
