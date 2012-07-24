class Patron < ActiveRecord::Base

  belongs_to :source
  has_many :activities
  has_many :donations
  has_many :promotion_patrons
  has_many :purchases
  has_many :raffles
  has_many :users
  has_many :raffles
  belongs_to :user
  has_many :purchases

  def self.filtered_by(filter)
    puts "filter from model: #{filter}"
    where("last like '%#{filter}%'")
  end

  attr_accessible :address_1, :address_2, :address_key, :city, :email, :entry_user_id, :first, :is_cast, :is_industry, :is_patron, :is_press, :last, :notes, :organization, :phone, :retiring_date, :source_id, :start_date, :state, :ticket_notes, :zip

  #def search
  #  #user inputs search call
  #  puts "input your search call"
  #  search = gets.chomp
  #  if search =~ /^[a-zA-Z]{3,}/
  #    by_last_name = Patron.find_all_by_last(/#{search}/)
  #    #puts "last name search"
  #  elsif search =~ /,[a-zA-Z]{3,}/
  #    by_first_name = Patron.find_all_by_first(/#{search[1..-1]}/)
  #    #puts "first name search"
  #  elsif search =~ /\*[a-zA-Z0-9]*/
  #    by_anything = Patron.find_all_by_last_and_first_and_address1_and_notes_and_email(/#{search[1..-1]}/, /#{search[1..-1]}/, /#{search[1..-1]}/, /#{search[1..-1]}/, /#{search[1..-1]}/)
  #    #puts "everything search"
  #  elsif search =~ /^[0-9]*/
  #    by_address = Patron.find_all_by_address_1(/#{search}/)
  #    #puts "address search"
  #  end
  #end
  #  search
end

