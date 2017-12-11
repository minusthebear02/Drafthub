require 'rails_helper'

RSpec.describe "events/new", type: :view do
  before(:each) do
    assign(:event, Event.new(
      :title => "MyString",
      :league => nil,
      :team => nil
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input#event_title[name=?]", "event[title]"

      assert_select "input#event_league_id[name=?]", "event[league_id]"

      assert_select "input#event_team_id[name=?]", "event[team_id]"
    end
  end
end
