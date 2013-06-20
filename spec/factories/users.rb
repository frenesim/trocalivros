# Read about factories at https://github.com/thoughtbot/factory_girl

require 'faker'

FactoryGirl.define do
  factory :user do
    name {Faker::Name.name}
    email {Faker::Internet.email}
    password "1234"
    password_confirmation { "1234" }
    sign_in_count 1
    phone_number {Faker::PhoneNumber.phone_number}
  end
end
