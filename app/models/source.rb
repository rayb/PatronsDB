class Source < ActiveRecord::Base

  has_many :patrons
  belongs_to :user

  attr_accessible :name, :notes, :start_date
end
