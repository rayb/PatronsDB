class Play < ActiveRecord::Base

  has_many :performances

  attr_accessible :end_date, :name, :performances, :start_date
end
