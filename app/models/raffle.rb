class Raffle < ActiveRecord::Base
  belongs_to :performance
  belongs_to :play
  belongs_to :patron

  attr_accessible :patron_id, :performance_id, :play_id
end
