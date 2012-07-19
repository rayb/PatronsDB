# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :patron do
    last "MyString"
    first "MyString"
    address_1 "MyString"
    address_2 "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
    phone "MyString"
    email "MyString"
    source_id 1
    address_key "MyString"
    ticket_notes "MyString"
    start_date "2012-07-18"
    retiring_date "2012-07-18"
    is_cast false
    is_industry false
    is_press false
    is_patron false
    notes "MyString"
  end
end
