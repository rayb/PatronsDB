class Play < ActiveRecord::Base

  has_many :performances
  has_many :activities
  has_many :promotions
  has_many :raffles
  belongs_to :user


  attr_accessible :end_date, :entry_user_id, :name, :performances, :start_date
end
