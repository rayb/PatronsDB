class Patron < ActiveRecord::Base

  belongs_to :source
  has_many :activities
  has_many :donations
  has_many :promotion_patrons
  has_many :purchases
  has_many :raffles
  has_many :users
  has_many :raffles

  attr_accessible :address_1, :address_2, :address_key, :city, :email, :first, :is_cast, :is_industry, :is_patron, :is_press, :last, :notes, :phone, :retiring_date, :source_id, :start_date, :state, :ticket_notes, :zip
end
