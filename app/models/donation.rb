class Donation < ActiveRecord::Base

  belongs_to :patron
  belongs_to :promotion
  belongs_to :user


  attr_accessible :amount, :date, :entry_user_id, :notes, :patron_id, :promotion_id
end
