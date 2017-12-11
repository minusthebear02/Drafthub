class League < ActiveRecord::Base

  belongs_to :user
  has_many :teams, dependent: :destroy
  has_many :events, dependent: :destroy

  validates :name, length: { minimum: 5 }, uniqueness: true, presence: true
  validates :user, presence: true
  validates :number_of_teams, numericality: { greater_than_or_equal_to: 4, less_than_or_equal_to: 25, message: "must be between 4 and 25 teams. Try again." }, presence: true

end
