# Read about factories at https://github.com/thoughtbot/factory_girl

require 'faker'

FactoryGirl.define do
  factory :livro do
    nome {Faker::Name.name}
    ano_escolaridade (5..12).to_a.sample
    preco (5..30).to_a.sample
    association :autore
    association :disciplina
    association :user
    association :editora
  end
end
