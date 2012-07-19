class PromotionType < ActiveRecord::Base

  has_many :promotions
  belongs_to :user

  attr_accessible :entry_user_id, :name
end
