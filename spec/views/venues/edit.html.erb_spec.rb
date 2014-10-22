require 'rails_helper'

RSpec.describe "venues/edit", :type => :view do
  before(:each) do
    @venue = assign(:venue, Venue.create!(
      :name => "MyString",
      :phone_number => 1,
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => 1,
      :email => "MyString",
      :website => "",
      :generate => "MyString",
      :scaffold => "MyString",
      :Venue => "MyString",
      :name => "MyString",
      :phone_number => 1,
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => 1,
      :email => "MyString",
      :website => "MyString",
      :facebook => "MyString",
      :twitter => "MyString",
      :instagram => "MyString",
      :space => 1.5,
      :capacity => 1.5,
      :available_parking => 1.5,
      :changing_rooms => 1,
      :restrooms => 1,
      :electric_outlets => 1,
      :indoors => false,
      :outdoors => false,
      :handicap => false,
      :coordinator => false,
      :space => 1.5,
      :capacity => 1.5
    ))
  end

  it "renders the edit venue form" do
    render

    assert_select "form[action=?][method=?]", venue_path(@venue), "post" do

      assert_select "input#venue_name[name=?]", "venue[name]"

      assert_select "input#venue_phone_number[name=?]", "venue[phone_number]"

      assert_select "input#venue_address[name=?]", "venue[address]"

      assert_select "input#venue_city[name=?]", "venue[city]"

      assert_select "input#venue_state[name=?]", "venue[state]"

      assert_select "input#venue_zip[name=?]", "venue[zip]"

      assert_select "input#venue_email[name=?]", "venue[email]"

      assert_select "input#venue_website[name=?]", "venue[website]"

      assert_select "input#venue_generate[name=?]", "venue[generate]"

      assert_select "input#venue_scaffold[name=?]", "venue[scaffold]"

      assert_select "input#venue_Venue[name=?]", "venue[Venue]"

      assert_select "input#venue_name[name=?]", "venue[name]"

      assert_select "input#venue_phone_number[name=?]", "venue[phone_number]"

      assert_select "input#venue_address[name=?]", "venue[address]"

      assert_select "input#venue_city[name=?]", "venue[city]"

      assert_select "input#venue_state[name=?]", "venue[state]"

      assert_select "input#venue_zip[name=?]", "venue[zip]"

      assert_select "input#venue_email[name=?]", "venue[email]"

      assert_select "input#venue_website[name=?]", "venue[website]"

      assert_select "input#venue_facebook[name=?]", "venue[facebook]"

      assert_select "input#venue_twitter[name=?]", "venue[twitter]"

      assert_select "input#venue_instagram[name=?]", "venue[instagram]"

      assert_select "input#venue_space[name=?]", "venue[space]"

      assert_select "input#venue_capacity[name=?]", "venue[capacity]"

      assert_select "input#venue_available_parking[name=?]", "venue[available_parking]"

      assert_select "input#venue_changing_rooms[name=?]", "venue[changing_rooms]"

      assert_select "input#venue_restrooms[name=?]", "venue[restrooms]"

      assert_select "input#venue_electric_outlets[name=?]", "venue[electric_outlets]"

      assert_select "input#venue_indoors[name=?]", "venue[indoors]"

      assert_select "input#venue_outdoors[name=?]", "venue[outdoors]"

      assert_select "input#venue_handicap[name=?]", "venue[handicap]"

      assert_select "input#venue_coordinator[name=?]", "venue[coordinator]"

      assert_select "input#venue_space[name=?]", "venue[space]"

      assert_select "input#venue_capacity[name=?]", "venue[capacity]"
    end
  end
end
