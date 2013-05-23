class Autore < ActiveRecord::Base
  attr_accessible :nome

  validates :nome, presence: true, uniqueness: true
end
