class Patron < ActiveRecord::Base

  belongs_to :source
  has_many :activities
  has_many :donations
  has_many :promotion_patrons
  has_many :purchases
  has_many :raffles
  has_many :users
  has_many :raffles
  belongs_to :user
  has_many :purchases


  attr_accessible :address_1, :address_2, :address_key, :city, :email, :entry_user_id, :first, :is_cast, :is_industry, :is_patron, :is_press, :last, :notes, :organization, :phone, :retiring_date, :source_id, :start_date, :state, :ticket_notes, :zip
end
