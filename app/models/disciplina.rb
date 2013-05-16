class Disciplina < ActiveRecord::Base
  attr_accessible :nome
  validates :nome, :presence  => true
end
