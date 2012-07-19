# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :activity do
    role_id 1
    patron_id 1
    play_id 1
    performance_id 1
    hours "9.99"
    start_date "2012-07-18"
    end_date "2012-07-18"
    notes "MyString"
  end
end
