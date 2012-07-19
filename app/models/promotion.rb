class Promotion < ActiveRecord::Base

  has_many :promotion_patrons

  attr_accessible :name, :performance_id, :play_id, :start_date


end
