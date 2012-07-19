class Role < ActiveRecord::Base
  has_many :activities
  belongs_to :user

  attr_accessible :name
end
