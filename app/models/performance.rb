class Performance < ActiveRecord::Base

  belongs_to :play
  has_many :purchases
  has_many :raffles
  has_many :activities
  has_many :promotions
  belongs_to :user

  attr_accessible :entry_user_id, :play_id, :start_date_time, :type
end
