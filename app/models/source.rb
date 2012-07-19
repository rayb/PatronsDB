class Source < ActiveRecord::Base

  has_many :patrons
  belongs_to :user

  attr_accessible :entry_user_id, :name, :notes, :start_date
end
