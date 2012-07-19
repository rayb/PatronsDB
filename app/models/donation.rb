class Donation < ActiveRecord::Base

  belongs_to :patron
  belongs_to :promotion

  attr_accessible :amount, :date, :notes, :patron_id, :promotion_id
end
