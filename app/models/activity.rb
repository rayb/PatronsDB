class Activity < ActiveRecord::Base
  attr_accessible :end_date, :hours, :notes, :patron_id, :performance_id, :play_id, :role_id, :start_date
end
