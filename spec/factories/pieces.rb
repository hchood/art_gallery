# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :piece do
    name "MyString"
    date_on_sale "2013-12-19"
    price_in_cents 1
    style "MyString"
    available false
    collection_id 1
    customer_id 1
    artist_id 1
  end
end
