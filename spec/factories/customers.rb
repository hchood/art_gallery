# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :customer do
    name "David Williams"
    email "davew@gmail.com"
    phone_no "7703694342"
    total_spent_in_cents 1
  end
end
