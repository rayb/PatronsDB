# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

TestPatron.delete_all
open("#{Rails.root}/db/import/stc_patrons.csv") do |patrons|
patrons.each_line do |line|
#puts line
  last_name, first_name, title, address1, address2, city, state, zip, phone, email, source,
    notes, company_notes = line.chomp.split(",")
  @mod_address = address1.sub(/P*.* *O*o*.* *Box/, 'PO Box')
  if @mod_address != ''
    @mod_address_num = @mod_address.scan(/\d*/).join('')
    @patron_key_add = @mod_address_num[0..3]
  elsif @mod_address == ''
    @patron_key_add = '0000'
  elsif @mod_address == /\D*/
    @patron_key_add = '0000'
  end
puts @patron_key_add + ' ' + last_name
  new_patron = TestPatron.new(
    :last => (last_name.capitalize if last_name),
    :first => (first_name.capitalize if first_name),
    :title_org => (title if title != ''),
    :address_1 => @mod_address,
    :address_2 => (address2 if address2 != ''),
    :city => (city if city != ''),
    :state => (state if state != ''),
    :zip => (zip if zip != ''),
    :phone => (phone if phone != ''),
    :email => (email if email != ''),
    :source => (source if email != ''),
    :notes => (notes if notes != ''),
    :company_notes => (company_notes if company_notes != ''),
    :patron_key => last_name.capitalize[0...3] + first_name.capitalize[0...3] + @patron_key_add
  )
  new_patron.save
  end
end

Purchase.delete_all
open("#{Rails.root}/db/import/BPTForeignerrawdownload.csv") do |purchases|
  purchases.each_line do |line|
#puts line
#    last_name, first_name, title, address1, address2, city, state, zip, phone, email, source,
#      notes, company_notes = line.chomp.split(",")
#    puts last_name + " " + first_name
#    new_patron = TestPatron.new(
#      :last => (last_name if last_name),
#      :first => (first_name if first_name),
#      :title_org => (title if title != ''),
#      :address_1 => (address1 if address1 != ''),
#      :address_2 => (address2 if address2 != ''),
#      :city => (city if city != ''),
#      :state => (state if state != ''),
#      :zip => (zip if zip != ''),
#      :phone => (phone if phone != ''),
#      :email => (email if email != ''),
#      :source => (source if email != ''),
#      :notes => (notes if notes != ''),
#      :company_notes => (company_notes if company_notes != '')
#    )
#    new_patron.save
  end
end