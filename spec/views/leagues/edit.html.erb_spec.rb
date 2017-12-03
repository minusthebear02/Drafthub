require 'rails_helper'

RSpec.describe "leagues/edit", type: :view do
  before(:each) do
    @league = assign(:league, League.create!(
      :name => "MyString",
      :teams => nil,
      :draft => nil
    ))
  end

  it "renders the edit league form" do
    render

    assert_select "form[action=?][method=?]", league_path(@league), "post" do

      assert_select "input#league_name[name=?]", "league[name]"

      assert_select "input#league_teams_id[name=?]", "league[teams_id]"

      assert_select "input#league_draft_id[name=?]", "league[draft_id]"
    end
  end
end
