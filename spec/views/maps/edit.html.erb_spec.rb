require 'rails_helper'

RSpec.describe "maps/edit", :type => :view do
  before(:each) do
    @map = assign(:map, Map.create!(
      :name => "MyString",
      :lat => 1.5,
      :lng => 1.5
    ))
  end

  it "renders the edit map form" do
    render

    assert_select "form[action=?][method=?]", map_path(@map), "post" do

      assert_select "input#map_name[name=?]", "map[name]"

      assert_select "input#map_lat[name=?]", "map[lat]"

      assert_select "input#map_lng[name=?]", "map[lng]"
    end
  end
end
