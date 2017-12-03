require 'rails_helper'

RSpec.describe "leagues/show", type: :view do
  before(:each) do
    @league = assign(:league, League.create!(
      :name => "Name",
      :teams => nil,
      :draft => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
