class Performance < ActiveRecord::Base

  belongs_to :play

  attr_accessible :play_id, :start_date_time, :type
end
