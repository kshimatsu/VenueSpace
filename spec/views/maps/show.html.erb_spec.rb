require 'rails_helper'

RSpec.describe "maps/show", :type => :view do
  before(:each) do
    @map = assign(:map, Map.create!(
      :name => "Name",
      :lat => 1.5,
      :lng => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
  end
end
