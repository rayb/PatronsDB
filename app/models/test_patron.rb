class TestPatron < ActiveRecord::Base
  attr_accessible :address_1, :address_2, :city, :company_notes, :email, :first, :last, :notes, :phone, :source, :state, :title_org, :zip, :patron_key
end
