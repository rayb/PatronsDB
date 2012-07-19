class Performance < ActiveRecord::Base

  belongs_to :play
  has_many :purchases
  has_many :raffles
  has_many :activities
  has_many :promotions

  attr_accessible :play_id, :start_date_time, :type
end
