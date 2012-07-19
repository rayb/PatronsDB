class Donation < ActiveRecord::Base
  attr_accessible :amount, :date, :notes, :patron_id, :promotion_id
end
