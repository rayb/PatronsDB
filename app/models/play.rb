class Play < ActiveRecord::Base
  attr_accessible :end_date, :name, :performances, :start_date
end
