class AddUserToLeagues < ActiveRecord::Migration
  def change
    add_reference :leagues, :user, index: true, foreign_key: true
  end
end
