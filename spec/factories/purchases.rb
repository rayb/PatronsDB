# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :purchase do
    purchase "MyString"
    ticket_id 1
    order_date "2012-07-16 16:00:11"
    start_date "2012-07-16 16:00:11"
    last_name "MyString"
    first_name "MyString"
    organization "MyString"
    phone "MyString"
    email "MyString"
    admission "MyString"
    price "9.99"
    count 1
    address_1 "MyString"
    address_2 "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
  end
end
