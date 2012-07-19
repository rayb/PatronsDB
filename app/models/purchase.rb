class Purchase < ActiveRecord::Base
  belongs_to :performance
  belongs_to :user

  attr_accessible :address_1, :address_2, :admission, :city, :count, :email, :first_name, :last_name, :order_date, :organization, :phone, :price, :purchase, :start_date, :state, :ticket_id, :zip
end
