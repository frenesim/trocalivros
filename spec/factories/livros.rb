# Read about factories at https://github.com/thoughtbot/factory_girl

require 'faker'

FactoryGirl.define do
  factory :livro do
    nome {Faker::Name.name}
    editora_id 1
    ano_escolaridade 5
    autore_id 1
    preco 10
    disciplina_id 1
    user_id 1
    photo1_file_name "drawing.svg"
    photo1_content_type "image/svg+xml"
    photo1_file_size 4094
    photo1_updated_at "2013-05-24 10:05:19"
    association :autore
    association :disciplina
    association :user
    association :editora
  end
end
