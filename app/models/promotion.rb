class Promotion < ActiveRecord::Base

  belongs_to :performance
  belongs_to :play
  has_many :promotion_patrons
  has_many :donations
  belongs_to :promotion_type
  belongs_to :user


  attr_accessible :name, :performance_id, :play_id, , :promotion_type_id, :start_date


end
