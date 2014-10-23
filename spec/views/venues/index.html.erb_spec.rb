require 'rails_helper'

RSpec.describe "venues/index", :type => :view do
  before(:each) do
    assign(:venues, [
      Venue.create!(
        :name => "Name",
        :phone_number => 1,
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => 2,
        :email => "Email",
        :website => "Website",
        :facebook => "Facebook",
        :twitter => "Twitter",
        :instagram => "Instagram",
        :space => 1.5,
        :capacity => 1.5,
        :available_parking => 1.5,
        :changing_rooms => 3,
        :restrooms => 4,
        :electric_outlets => 5,
        :indoors => false,
        :outdoors => false,
        :handicap => false,
        :coordinator => false,
        :space => 1.5,
        :capacity => 1.5
      ),
      Venue.create!(
        :name => "Name",
        :phone_number => 1,
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => 2,
        :email => "Email",
        :website => "Website",
        :facebook => "Facebook",
        :twitter => "Twitter",
        :instagram => "Instagram",
        :space => 1.5,
        :capacity => 1.5,
        :available_parking => 1.5,
        :changing_rooms => 3,
        :restrooms => 4,
        :electric_outlets => 5,
        :indoors => false,
        :outdoors => false,
        :handicap => false,
        :coordinator => false,
        :space => 1.5,
        :capacity => 1.5
      )
    ])
  end

  it "renders a list of venues" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Facebook".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter".to_s, :count => 2
    assert_select "tr>td", :text => "Instagram".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
