require 'rails_helper'

RSpec.describe "leagues/new", type: :view do
  before(:each) do
    assign(:league, League.new(
      :name => "MyString",
      :teams => nil,
      :draft => nil
    ))
  end

  it "renders new league form" do
    render

    assert_select "form[action=?][method=?]", leagues_path, "post" do

      assert_select "input#league_name[name=?]", "league[name]"

      assert_select "input#league_teams_id[name=?]", "league[teams_id]"

      assert_select "input#league_draft_id[name=?]", "league[draft_id]"
    end
  end
end
