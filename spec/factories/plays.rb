# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :play do
    name "MyString"
    start_date "2012-07-15"
    end_date "2012-07-15"
    performances 1
  end
end
