class Purchase < ActiveRecord::Base
  belongs_to :performance
  belongs_to :user
  belongs_to :patron

  attr_accessible :address_1, :address_2, :admission, :city, :count, :email, :entry_user_id, :first_name, :last_name, :order_date, :organization, :patron_id, :phone, :price, :purchase, :start_date, :state, :ticket_number, :zip
end
