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
  puts last_name + " " + first_name
  new_patron = TestPatron.new(
    :last => (last_name if last_name),
    :first => (first_name if first_name),
    :title_org => (title if title != ''),
    :address_1 => (address1 if address1 != ''),
    :address_2 => (address2 if address2 != ''),
    :city => (city if city != ''),
    :state => (state if state != ''),
    :zip => (zip if zip != ''),
    :phone => (phone if phone != ''),
    :email => (email if email != ''),
    :source => (source if email != ''),
    :notes => (notes if notes != ''),
    :company_notes => (company_notes if company_notes != '')
  )
  new_patron.save
#  nice trick
#  tracks.each_line do |track|
#    track_id, an_code, name, location_id, state_location_id, category_id = track.chomp.split(",")
#    new_track= Track.find_or_create_by_track_code(
#      an_code,
#      :id => track_id,
#      :location_id => location_id,
#      :name => name)
#    new_track.save
  end
end
