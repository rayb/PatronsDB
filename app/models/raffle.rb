class Raffle < ActiveRecord::Base
  attr_accessible :patron_id, :performance_id, :play_id
end
