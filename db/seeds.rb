# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# encoding: utf-8

Livro.create([
  { :nome => "Palavras à Solta", :editora_id => 1, :ano_escolaridade => 5, :autore_id => 1, :preco => 10, :created_at => "2013-05-01 22:04:09", :updated_at => "2013-05-01 22:04:09", :disciplina_id => 1 }
], :without_protection => true )


# encoding: utf-8

Disciplina.create([
  { :nome => "Português", :created_at => "2013-05-01 21:48:13", :updated_at => "2013-05-01 21:48:13" },
  { :nome => "Matemática", :created_at => "2013-05-01 21:48:28", :updated_at => "2013-05-01 21:48:28" }
], :without_protection => true )


# encoding: utf-8

Autore.create([
  { :nome => "José Victor Adragão", :created_at => "2013-05-01 21:52:27", :updated_at => "2013-05-01 21:52:27" }
], :without_protection => true )


# encoding: utf-8

Editora.create([
  { :nome => "Raiz Editora", :created_at => "2013-05-01 21:53:19", :updated_at => "2013-05-01 21:53:19" },
  { :nome => "Edições Asa", :created_at => "2013-05-01 21:53:40", :updated_at => "2013-05-01 21:53:40" }
], :without_protection => true )


