class Team < ActiveRecord::Base
  belongs_to :league
  belongs_to :user

  validates :user_id, :uniqueness => { :scope => :league_id,
  :message => " may only have one team per league." }
end
