class Review < ActiveRecord::Base
  attr_accessible :livro_id, :review
  belongs_to :livro
end
