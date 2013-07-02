# encoding: UTF-8
require 'faker'

User.first_or_create([
                         { :email => "hlsp999@gmail.com", :password => "1234", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 17, :current_sign_in_at => "2013-06-16 18:35:50", :last_sign_in_at => "2013-06-02 00:28:22", :current_sign_in_ip => "127.0.0.1", :last_sign_in_ip => "127.0.0.1", :created_at => "2013-05-09 08:13:18", :updated_at => "2013-06-16 18:35:50", :phone_number => "913419728", :name => "Humberto" },
                         { :email => "humberto@gmail.com", :password => "1234", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 3, :current_sign_in_at => "2013-05-09 16:24:56", :last_sign_in_at => "2013-05-09 08:45:00", :current_sign_in_ip => "127.0.0.1", :last_sign_in_ip => "127.0.0.1", :created_at => "2013-05-09 08:14:35", :updated_at => "2013-05-09 16:24:56", :phone_number => "", :name => "" },
                         { :email => "clau@gmail.com", :password => "1234", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 4, :current_sign_in_at => "2013-06-10 18:51:56", :last_sign_in_at => "2013-06-04 14:49:48", :current_sign_in_ip => "127.0.0.1", :last_sign_in_ip => "127.0.0.1", :created_at => "2013-06-04 14:00:58", :updated_at => "2013-06-10 18:51:56", :phone_number => "", :name => "Clau" },
                         { :email => "ana@gmail.com", :password => "1234", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 4, :current_sign_in_at => "2013-06-10 18:51:56", :last_sign_in_at => "2013-06-04 14:49:48", :current_sign_in_ip => "127.0.0.1", :last_sign_in_ip => "127.0.0.1", :created_at => "2013-06-04 14:00:58", :updated_at => "2013-06-10 18:51:56", :phone_number => "", :name => "" },
                         { :email => "celso@gmail.com", :password => "1234", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 4, :current_sign_in_at => "2013-06-10 18:51:56", :last_sign_in_at => "2013-06-04 14:49:48", :current_sign_in_ip => "127.0.0.1", :last_sign_in_ip => "127.0.0.1", :created_at => "2013-06-04 14:00:58", :updated_at => "2013-06-10 18:51:56", :phone_number => "", :name => "" }
                     ], :without_protection => true )



10.times do
  FactoryGirl.create(:autore)
end

10.times do
  FactoryGirl.create(:disciplina)
end

10.times do
  FactoryGirl.create(:editora)
end

Livro.first_or_create([
    {:nome => Faker::Name.first_name, :ano_escolaridade => (5..12).to_a.sample, :preco => (5..30).to_a.sample, :autore_id => (1..10).to_a.sample, :disciplina_id => (1..10).to_a.sample, :user_id => (1..5).to_a.sample, :editora_id => (1..10).to_a.sample},
    {:nome => Faker::Name.first_name, :ano_escolaridade => (5..12).to_a.sample, :preco => (5..30).to_a.sample, :autore_id => (1..10).to_a.sample, :disciplina_id => (1..10).to_a.sample, :user_id => (1..5).to_a.sample, :editora_id => (1..10).to_a.sample},
    {:nome => Faker::Name.first_name, :ano_escolaridade => (5..12).to_a.sample, :preco => (5..30).to_a.sample, :autore_id => (1..10).to_a.sample, :disciplina_id => (1..10).to_a.sample, :user_id => (1..5).to_a.sample, :editora_id => (1..10).to_a.sample},
    {:nome => Faker::Name.first_name, :ano_escolaridade => (5..12).to_a.sample, :preco => (5..30).to_a.sample, :autore_id => (1..10).to_a.sample, :disciplina_id => (1..10).to_a.sample, :user_id => (1..5).to_a.sample, :editora_id => (1..10).to_a.sample},
    {:nome => Faker::Name.first_name, :ano_escolaridade => (5..12).to_a.sample, :preco => (5..30).to_a.sample, :autore_id => (1..10).to_a.sample, :disciplina_id => (1..10).to_a.sample, :user_id => (1..5).to_a.sample, :editora_id => (1..10).to_a.sample},
    {:nome => Faker::Name.first_name, :ano_escolaridade => (5..12).to_a.sample, :preco => (5..30).to_a.sample, :autore_id => (1..10).to_a.sample, :disciplina_id => (1..10).to_a.sample, :user_id => (1..5).to_a.sample, :editora_id => (1..10).to_a.sample},
    {:nome => Faker::Name.first_name, :ano_escolaridade => (5..12).to_a.sample, :preco => (5..30).to_a.sample, :autore_id => (1..10).to_a.sample, :disciplina_id => (1..10).to_a.sample, :user_id => (1..5).to_a.sample, :editora_id => (1..10).to_a.sample},
    {:nome => Faker::Name.first_name, :ano_escolaridade => (5..12).to_a.sample, :preco => (5..30).to_a.sample, :autore_id => (1..10).to_a.sample, :disciplina_id => (1..10).to_a.sample, :user_id => (1..5).to_a.sample, :editora_id => (1..10).to_a.sample},
    {:nome => Faker::Name.first_name, :ano_escolaridade => (5..12).to_a.sample, :preco => (5..30).to_a.sample, :autore_id => (1..10).to_a.sample, :disciplina_id => (1..10).to_a.sample, :user_id => (1..5).to_a.sample, :editora_id => (1..10).to_a.sample},
    {:nome => Faker::Name.first_name, :ano_escolaridade => (5..12).to_a.sample, :preco => (5..30).to_a.sample, :autore_id => (1..10).to_a.sample, :disciplina_id => (1..10).to_a.sample, :user_id => (1..5).to_a.sample, :editora_id => (1..10).to_a.sample},
    {:nome => Faker::Name.first_name, :ano_escolaridade => (5..12).to_a.sample, :preco => (5..30).to_a.sample, :autore_id => (1..10).to_a.sample, :disciplina_id => (1..10).to_a.sample, :user_id => (1..5).to_a.sample, :editora_id => (1..10).to_a.sample},
    {:nome => Faker::Name.first_name, :ano_escolaridade => (5..12).to_a.sample, :preco => (5..30).to_a.sample, :autore_id => (1..10).to_a.sample, :disciplina_id => (1..10).to_a.sample, :user_id => (1..5).to_a.sample, :editora_id => (1..10).to_a.sample},
    {:nome => Faker::Name.first_name, :ano_escolaridade => (5..12).to_a.sample, :preco => (5..30).to_a.sample, :autore_id => (1..10).to_a.sample, :disciplina_id => (1..10).to_a.sample, :user_id => (1..5).to_a.sample, :editora_id => (1..10).to_a.sample},
    {:nome => Faker::Name.first_name, :ano_escolaridade => (5..12).to_a.sample, :preco => (5..30).to_a.sample, :autore_id => (1..10).to_a.sample, :disciplina_id => (1..10).to_a.sample, :user_id => (1..5).to_a.sample, :editora_id => (1..10).to_a.sample},
    {:nome => Faker::Name.first_name, :ano_escolaridade => (5..12).to_a.sample, :preco => (5..30).to_a.sample, :autore_id => (1..10).to_a.sample, :disciplina_id => (1..10).to_a.sample, :user_id => (1..5).to_a.sample, :editora_id => (1..10).to_a.sample},
    {:nome => Faker::Name.first_name, :ano_escolaridade => (5..12).to_a.sample, :preco => (5..30).to_a.sample, :autore_id => (1..10).to_a.sample, :disciplina_id => (1..10).to_a.sample, :user_id => (1..5).to_a.sample, :editora_id => (1..10).to_a.sample},
    {:nome => Faker::Name.first_name, :ano_escolaridade => (5..12).to_a.sample, :preco => (5..30).to_a.sample, :autore_id => (1..10).to_a.sample, :disciplina_id => (1..10).to_a.sample, :user_id => (1..5).to_a.sample, :editora_id => (1..10).to_a.sample},
    {:nome => Faker::Name.first_name, :ano_escolaridade => (5..12).to_a.sample, :preco => (5..30).to_a.sample, :autore_id => (1..10).to_a.sample, :disciplina_id => (1..10).to_a.sample, :user_id => (1..5).to_a.sample, :editora_id => (1..10).to_a.sample},
    {:nome => Faker::Name.first_name, :ano_escolaridade => (5..12).to_a.sample, :preco => (5..30).to_a.sample, :autore_id => (1..10).to_a.sample, :disciplina_id => (1..10).to_a.sample, :user_id => (1..5).to_a.sample, :editora_id => (1..10).to_a.sample},
    {:nome => Faker::Name.first_name, :ano_escolaridade => (5..12).to_a.sample, :preco => (5..30).to_a.sample, :autore_id => (1..10).to_a.sample, :disciplina_id => (1..10).to_a.sample, :user_id => (1..5).to_a.sample, :editora_id => (1..10).to_a.sample}
                      ], :without_protection => true )

