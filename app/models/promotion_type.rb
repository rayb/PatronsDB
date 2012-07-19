class PromotionType < ActiveRecord::Base

  has_many :promotions

  attr_accessible :name
end
