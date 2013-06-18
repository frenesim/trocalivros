# Read about factories at https://github.com/thoughtbot/factory_girl

require "faker"

FactoryGirl.define do
  factory :editora do
    nome {Faker::Name.first_name}
  end
end
