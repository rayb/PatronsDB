# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    login "MyString"
    patron_id 1
    password_digest "MyString"
    roles_mask 1
    display_order 1
    retired_date "2012-07-18"
    email "MyString"
  end
end
