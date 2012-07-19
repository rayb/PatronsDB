class PromotionPatron < ActiveRecord::Base

  belongs_to :promotion

  attr_accessible :patron_id, :promotion_id
end
