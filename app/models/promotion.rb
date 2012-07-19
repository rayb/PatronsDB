class Promotion < ActiveRecord::Base
  attr_accessible :name, :performance_id, :play_id, :start_date
end
