class PromotionType < ActiveRecord::Base

  has_many :promotions
  belongs_to :user

  attr_accessible :name
end
