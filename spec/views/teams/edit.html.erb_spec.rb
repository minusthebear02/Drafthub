require 'rails_helper'

RSpec.describe "teams/edit", type: :view do
  before(:each) do
    @team = assign(:team, Team.create!(
      :name => "MyString",
      :league => nil,
      :user => nil
    ))
  end

  it "renders the edit team form" do
    render

    assert_select "form[action=?][method=?]", team_path(@team), "post" do

      assert_select "input#team_name[name=?]", "team[name]"

      assert_select "input#team_league_id[name=?]", "team[league_id]"

      assert_select "input#team_user_id[name=?]", "team[user_id]"
    end
  end
end
