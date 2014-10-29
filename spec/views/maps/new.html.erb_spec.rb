require 'rails_helper'

RSpec.describe "maps/new", :type => :view do
  before(:each) do
    assign(:map, Map.new(
      :name => "MyString",
      :lat => 1.5,
      :lng => 1.5
    ))
  end

  it "renders new map form" do
    render

    assert_select "form[action=?][method=?]", maps_path, "post" do

      assert_select "input#map_name[name=?]", "map[name]"

      assert_select "input#map_lat[name=?]", "map[lat]"

      assert_select "input#map_lng[name=?]", "map[lng]"
    end
  end
end
