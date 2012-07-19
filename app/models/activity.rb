class Activity < ActiveRecord::Base

  belongs_to :role
  belongs_to :patron
  belongs_to :play
  belongs_to :performance
  belongs_to :user


  attr_accessible :end_date, :hours, :notes, :patron_id, :performance_id, :play_id, :role_id, :start_date
end
