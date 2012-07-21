# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Patron.delete_all
open("#{Rails.root}/db/import/stc_patrons.csv") do |patrons|
patrons.each_line do |line|
  last_name, first_name, organization, address1, address2, city, state, zip, phone, email, source,
    ticket_notes, company_notes = line.chomp.split(",")
  @mod_address_1 = address1.sub(/P*.* *O*o*.* *Box/, 'PO Box')
  @mod_address_2 = @mod_address_1.gsub(/"*/, '')
  if @mod_address_2 =~ /\d/
    @mod_address_2_num = @mod_address_2.scan(/\d*/).join('')
    @patron_key_add = @mod_address_2_num[0..3]
  else
    @patron_key_add = '0000'
  end
  #puts @patron_key_add + ' ' + @mod_address_2
  new_patron = Patron.new(
    :last => (last_name.capitalize if last_name),
    :first => (first_name.capitalize if first_name),
    :organization => (organization if organization != ''),
    :address_1 => (@mod_address_2 if @mod_address_2 != ''),
    :address_2 => (address2 if address2 != ''),
    :city => (city if city != ''),
    :state => (state if state != ''),
    :zip => (zip if zip != ''),
    :phone => (phone if phone != ''),
    :email => (email if email != ''),
    #:source => (source if source != ''),
    :ticket_notes => (ticket_notes if ticket_notes != ''),
    :notes => (company_notes if company_notes != ''),
    :address_key => last_name.capitalize[0...3] + first_name.capitalize[0...3] + @patron_key_add
  )
  new_patron.save
  end
end

#Patron.delete_all
#open("#{Rails.root}/db/import/STC - Main merged list July 2012.csv") do |patrons|
#  patrons.each_line do |line|
#     last, first, organization, address1, address2, city, state, zip, phone, email, source, notes, company_notes = line.chomp.split(",")
#     @mod_address_1 = address1.sub(/P*.* *O*o*.* *Box/, 'PO Box')
#     @mod_address_2 = @mod_address_1.gsub(/"*/, '')
#     new_patron = Patron.new(
#         :last => (last.capitalize if last),
#         :first => (first.capitalize if first,
#         :organization => (organization if organization != ''),
#         :address_2 = (@mod_address_2 if @mod_address_2 !='')
#         :address_2 => (address2 if address2 != ''),
#         :city => (city if city != ''),
#         :state => (state if state != ''),
#         :zip => (zip if zip != ''),
#         :phone => (phone if phone != ''),
#         :email => (email if email != ''),
#         :source_id => Source.find_by_name(source).collect(&:id)
#     )
#     new_patron.save
#  end
#end
#
#Source.delete_all
#open("#{Rails.root}/db/import/STC - Main merged list July 2012.csv") do |sources|
# sources.each_line do |line|
#   last, first, organization, address1, address2, city, state, zip, phone, email, source, notes, company_notes= line.chomp.split(",")
#   new_source = Source.find_or_create_by_name(
#       source
#       :name => (source if source != '')
#   )
#   new_source.save
#end
#end
#
#Purchase.delete_all
#open("#{Rails.root}/db/import/BPTForeignerrawdownload.csv") do |purchases|
#  purchases.each_line do |line|
##puts line
##    last_name, first_name, title, address1, address2, city, state, zip, phone, email, source,
##      notes, company_notes = line.chomp.split(",")
##    puts last_name + " " + first_name
##    new_patron = TestPatron.new(
##      :last => (last_name if last_name),
##      :first => (first_name if first_name),
##      :title_org => (title if title != ''),
##      :address_1 => (address1 if address1 != ''),
##      :address_2 => (address2 if address2 != ''),
##      :city => (city if city != ''),
##      :state => (state if state != ''),
##      :zip => (zip if zip != ''),
##      :phone => (phone if phone != ''),
##      :email => (email if email != ''),
##      :source => (source if email != ''),
##      :notes => (notes if notes != ''),
##      :company_notes => (company_notes if company_notes != '')
##    )
##    new_patron.save
#  end
#end