require 'rails_helper'

RSpec.describe "maps/index", :type => :view do
  before(:each) do
    assign(:maps, [
      Map.create!(
        :name => "Name",
        :lat => 1.5,
        :lng => 1.5
      ),
      Map.create!(
        :name => "Name",
        :lat => 1.5,
        :lng => 1.5
      )
    ])
  end

  it "renders a list of maps" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
