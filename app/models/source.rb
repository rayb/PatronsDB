class Source < ActiveRecord::Base

  has_many :patrons
  attr_accessible :name, :notes, :start_date
end
