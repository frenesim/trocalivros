class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :livros
  has_many :photos, through: :livros

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :phone_number, :remember_me, :name
  # attr_accessible :title, :body
  has_many :users

end
