class Promotion < ActiveRecord::Base

  belongs_to :performance
  belongs_to :play
  has_many :promotion_patrons
  has_many :donations

  attr_accessible :name, :performance_id, :play_id, :start_date


end
