# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :donation do
    patron_id "MyString"
    date "2012-07-18"
    amount "9.99"
    promotion_id 1
    notes "MyString"
  end
end
