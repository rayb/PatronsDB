class User < ActiveRecord::Base

  belongs_to :patron
  has_many :activities
  has_many :donations
  has_many :patrons
  has_many :performances
  has_many :plays
  has_many :promotions
  has_many :promotion_types
  has_many :purchases
  has_many :raffles
  has_many :roles
  has_many :sources

  attr_accessible :display_order, :email, :entry_user_id, :login, :password_digest, :patron_id, :retired_date, :roles_mask
end
