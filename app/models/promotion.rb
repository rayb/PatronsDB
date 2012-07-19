class Promotion < ActiveRecord::Base

  belongs_to :performance
  belongs_to :play
  has_many :promotion_patrons
  has_many :donations
  has_many :promotion_types

  attr_accessible :name, :performance_id, :play_id, :start_date


end
