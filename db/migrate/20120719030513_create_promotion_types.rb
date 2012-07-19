class CreatePromotionTypes < ActiveRecord::Migration
  def change
    create_table :promotion_types do |t|
      t.string :name
    end
  end
end
