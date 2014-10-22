require 'rails_helper'

RSpec.describe "venues/show", :type => :view do
  before(:each) do
    @venue = assign(:venue, Venue.create!(
      :name => "Name",
      :phone_number => 1,
      :address => "Address",
      :city => "City",
      :state => "State",
      :zip => 2,
      :email => "Email",
      :website => "",
      :generate => "Generate",
      :scaffold => "Scaffold",
      :Venue => "Venue",
      :name => "Name",
      :phone_number => 3,
      :address => "Address",
      :city => "City",
      :state => "State",
      :zip => 4,
      :email => "Email",
      :website => "Website",
      :facebook => "Facebook",
      :twitter => "Twitter",
      :instagram => "Instagram",
      :space => 1.5,
      :capacity => 1.5,
      :available_parking => 1.5,
      :changing_rooms => 5,
      :restrooms => 6,
      :electric_outlets => 7,
      :indoors => false,
      :outdoors => false,
      :handicap => false,
      :coordinator => false,
      :space => 1.5,
      :capacity => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Generate/)
    expect(rendered).to match(/Scaffold/)
    expect(rendered).to match(/Venue/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Website/)
    expect(rendered).to match(/Facebook/)
    expect(rendered).to match(/Twitter/)
    expect(rendered).to match(/Instagram/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
  end
end
