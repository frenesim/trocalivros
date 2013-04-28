class Livro < ActiveRecord::Base
  attr_accessible :ano_escolaridade, :autor_id, :editora_id, :nome, :preco
end
