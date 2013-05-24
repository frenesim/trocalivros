# Read about factories at https://github.com/thoughtbot/factory_girl

require 'faker'

FactoryGirl.define do
  factory :disciplina do
    nome {Faker::Name.name}
  end
end
