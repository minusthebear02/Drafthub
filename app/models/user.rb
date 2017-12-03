class User < ActiveRecord::Base
  
  has_many :leagues

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
