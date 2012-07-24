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
      def self.filtered_by(filter)
        puts "filter from model: #{filter}"
        where("last like '%#{filter}%'")
      end
      Patron.filtered_by(search)
    elsif search =~ /,[a-zA-Z]{3,}/
      #first name search
      def self.filtered_by(filter)
        puts "filter from model: #{filter}"
        where("first like '%#{filter}%'")
      end
      Patron.filtered_by(search[1..-1])
    elsif search =~ /\*[a-zA-Z0-9]*/
      #everything search
      #filter by email & notes doesn't work for some reason
      def self.filtered_by(filter)
        puts "filter from model: #{filter}"
        where("last || first like '%#{filter}%'")
      end
      Patron.filtered_by(search[1..-1])
    elsif search =~ /^[0-9]*/
      #address search
      #doesn't search by both addresses, only one (second one in this case)
      def self.filtered_by(filter)
        puts "filter from model: #{filter}"
        where("address_1 || address_2 like '%#{filter}%'")
      end
      Patron.filtered_by(search)
    end
 end

end

