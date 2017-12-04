class League < ActiveRecord::Base

  belongs_to :user
  has_many :teams, dependent: :destroy

  validates :name, length: { minimum: 5 }, uniqueness: true, presence: true
  validates :user, presence: true

  

end
