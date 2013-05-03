# encoding: UTF-8

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
                 { :nome => "Palavras à Solta", :editora_id => 1, :ano_escolaridade => 5, :autore_id => 1, :preco => 10, :created_at => "2013-05-01 22:04:09", :updated_at => "2013-05-01 22:04:09", :disciplina_id => 1 }
             ], :without_protection => true )
