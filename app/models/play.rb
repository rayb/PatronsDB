class Play < ActiveRecord::Base

  has_many :performances
  has_many :activities
  has_many :promotions
  has_many :raffles

  attr_accessible :end_date, :name, :performances, :start_date
end
