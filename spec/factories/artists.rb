# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :artist do
    name "MyString"
    email "helen@gmail.com"
    phone_no "4133203613"
    birthplace "MyString"
    art_style "MyString"
  end
end
