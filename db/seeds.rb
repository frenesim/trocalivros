# encoding: UTF-8
require 'Faker'
User.first_or_create([
  { :email => "humberto@gmail.com", :password => "12345678", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 1, :current_sign_in_at => "2013-05-09 08:13:18", :last_sign_in_at => "2013-05-09 08:13:18", :current_sign_in_ip => "127.0.0.1", :last_sign_in_ip => "127.0.0.1", :created_at => "2013-05-09 08:13:18", :updated_at => "2013-05-09 08:13:18", :phone_number => "913419728", :name => "1bi" },
  { :email => "clau@gmail.com", :password => "12345678", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 3, :current_sign_in_at => "2013-05-09 16:24:56", :last_sign_in_at => "2013-05-09 08:45:00", :current_sign_in_ip => "127.0.0.1", :last_sign_in_ip => "127.0.0.1", :created_at => "2013-05-09 08:14:35", :updated_at => "2013-05-09 16:24:56", :phone_number => "222222222", :name => "clau" }
], :without_protection => true )

Disciplina.first_or_create([
  { :nome => "Português"},
  { :nome => "Matemática"},
  {:nome => Faker.Name.name}
], :without_protection => true )

Autore.first_or_create([
  { :nome => "José Victor Adragão"}
], :without_protection => true )

Editora.first_or_create([
  { :nome => "Raiz Editora"},
  { :nome => "Edições Asa" }
], :without_protection => true )

Livro.first_or_create([
  { :nome => "Palavras à Solta", :editora_id => 1, :ano_escolaridade => 5, :autore_id => 1, :preco => 10, :disciplina_id => 1, :user_id => 1, :photo1_file_name => "drawing.svg", :photo1_content_type => "image/svg+xml", :photo1_file_size => 4094}
], :without_protection => true )


