class User < ActiveRecord::Base
  
  has_many :leagues
  has_many :teams

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
