json.array!(@venues) do |venue|
  json.extract! venue, :id, :name, :phone_number, :address, :city, :state, :zip, :email, :website, :facebook, :twitter, :instagram, :space, :capacity, :available_parking, :changing_rooms, :restrooms, :electric_outlets, :indoors, :outdoors, :handicap, :coordinator, :space, :capacity
  json.url venue_url(venue, format: :json)
end
