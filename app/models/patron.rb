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

  #def self.filtered_by(filter)
  #  puts "filter from model: #{filter}"
  #  where("last like '%#{filter}%'")
  #end

  attr_accessible :address_1, :address_2, :address_key, :city, :email, :entry_user_id, :first, :is_cast, :is_industry, :is_patron, :is_press, :last, :notes, :organization, :phone, :retiring_date, :source_id, :start_date, :state, :ticket_notes, :zip

  def self.search
    puts "input your search call"
    search = gets.chomp
    if search =~ /^[a-zA-Z]{3,}/
      #last name search
      def self.filtered_by_last(filter)
        puts "filter from model: #{filter}"
        where("last like '%#{filter}%'")
      end
      Patron.filtered_by_last(search)
    elsif search =~ /,[a-zA-Z]{3,}/
      #first name search
      def self.filtered_by_first(filter)
        puts "filter from model: #{filter}"
        where("first like '%#{filter}%'")
      end
      Patron.filtered_by_first(search[1..-1])
    elsif search =~ /\*[a-zA-Z0-9]*/
      #everything search
      #filter by email & notes doesn't work for some reason - seems to be when too many fields/not in the same order
      def self.filtered_by_anything(filter)
        puts "filter from model: #{filter}"
        where("last || first like '%#{filter}%'")
      end
      Patron.filtered_by_anything(search[1..-1])
    elsif search =~ /^[0-9]*/
      #address search
      #doesn't find all records - not sure if that is the case for everything..
      def self.filtered_by_address(filter)
        puts "filter from model: #{filter}"
        where("address_1 || address_2 like '%#{filter}%'")
      end
      Patron.filtered_by_address(search)
    end
 end

end

