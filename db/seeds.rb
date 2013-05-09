# encoding: UTF-8


User.first_or_create([
  { :email => "hlsp999@gmail.com", :encrypted_password => "$2a$10$ANzCJhSrnuBi03bcpbUiNe88De2pqgLTifhZLjgBLInOsQtKD7JCS", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 1, :current_sign_in_at => "2013-05-09 08:13:18", :last_sign_in_at => "2013-05-09 08:13:18", :current_sign_in_ip => "127.0.0.1", :last_sign_in_ip => "127.0.0.1", :created_at => "2013-05-09 08:13:18", :updated_at => "2013-05-09 08:13:18", :phone_number => "913419728" },
  { :email => "humberto@gmail.com", :encrypted_password => "$2a$10$IRma3QIIBoT5GFS2Sn7DhO7asyvJLlJwB/7v3T39KNzR6d9SKOH26", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 3, :current_sign_in_at => "2013-05-09 16:24:56", :last_sign_in_at => "2013-05-09 08:45:00", :current_sign_in_ip => "127.0.0.1", :last_sign_in_ip => "127.0.0.1", :created_at => "2013-05-09 08:14:35", :updated_at => "2013-05-09 16:24:56", :phone_number => "222222222" }
], :without_protection => true )

Disciplina.first_or_create([
  { :nome => "Português", :created_at => "2013-05-01 21:48:13", :updated_at => "2013-05-01 21:48:13" },
  { :nome => "Matemática", :created_at => "2013-05-01 21:48:28", :updated_at => "2013-05-01 21:48:28" }
], :without_protection => true )

Autore.first_or_create([
  { :nome => "José Victor Adragão", :created_at => "2013-05-01 21:52:27", :updated_at => "2013-05-01 21:52:27" }
], :without_protection => true )

Editora.first_or_create([
  { :nome => "Raiz Editora", :created_at => "2013-05-01 21:53:19", :updated_at => "2013-05-01 21:53:19" },
  { :nome => "Edições Asa", :created_at => "2013-05-01 21:53:40", :updated_at => "2013-05-01 21:53:40" }
], :without_protection => true )

Livro.first_or_create([
                 { :nome => "Palavras à Solta", :editora_id => 1, :ano_escolaridade => 5, :autore_id => 1, :preco => 10, :user_id => 1, :created_at => "2013-05-01 22:04:09", :updated_at => "2013-05-01 22:04:09", :disciplina_id => 1 }
             ], :without_protection => true )



