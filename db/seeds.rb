# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create email: 'kshimatsu@ucsd.edu', password: '12345678', password_confirmation: '12345678'

file1 = File.new("spec/fixtures/venue1.jpg")
file2 = File.new("spec/fixtures/venue2.jpg")
file3 = File.new("spec/fixtures/venue3.jpg")
file4 = File.new("spec/fixtures/venue4.jpg")
file5 = File.new("spec/fixtures/venue5.jpg")
file6 = File.new("spec/fixtures/venue6.jpg")
file7 = File.new("spec/fixtures/venue7.jpg")
file8 = File.new("spec/fixtures/venue8.jpg")
file9 = File.new("spec/fixtures/venue9.jpg")
file10 = File.new("spec/fixtures/venue10.jpg")
file11 = File.new("spec/fixtures/venue11.jpg")
file12 = File.new("spec/fixtures/venue12.jpg")
file13 = File.new("spec/fixtures/venue13.jpg")
file14 = File.new("spec/fixtures/venue14.jpg")
file15 = File.new("spec/fixtures/venue15.jpg")
file16 = File.new("spec/fixtures/venue16.jpg")
file17 = File.new("spec/fixtures/venue17.jpg")
file18 = File.new("spec/fixtures/venue18.jpg")
file19 = File.new("spec/fixtures/venue19.jpg")


Venue.create name: 'Wedgewood on Boulder Creek', budget: 1, phone_number: '9026374859', address: '38470 Boulder Canyon, Highway 119', city: 'Boulder', state: 'CO', zip: 80302, website: 'http://www.wedgewoodbanquet.com/wedding-venue/Boulder-Creek', capacity: 250, user: user, picture: file1
Venue.create name: 'Brookeside Gardens', budget: 2, phone_number: '6284927462', address: '619 E State Highway 56', city: 'Boulder', state: 'CO', zip: 80513, website: 'http://www.brooksidegardens.com', capacity: 350, user: user, picture: file2
Venue.create name: 'Noahs Event Venue', budget: 3, phone_number: '9026374859', address: '11885 N. Bradburn Blvd.', city: 'Westminster', state: 'CO', zip: 80031, website: 'http://www.noahsweddings.com/', capacity: 500, user: user, picture: file3
Venue.create name: 'Spruce Mountain Guest Ranch', budget: 2, phone_number: '9026374859', address: '14771 Spruce Mountain Road, PO Box 38', city: 'Larkspur', state: 'CO', zip: 80118, website: 'http://www.sprucemountainweddings.com/', capacity: 800, user: user, picture: file4
Venue.create name: 'Secret Window', budget: 1, phone_number: '9026374859', address: '47 Third Street', city: 'Monument', state: 'CO', zip: 80132, website: 'http://secretwindowevents.com/', capacity: 150, user: user, picture: file5
Venue.create name: 'Garden of the Gods', budget: 2, phone_number: '9026374859', address: '3320 Mesa Road', city: 'Colorado Springs', state: 'CO', zip: 80904, website: 'http://www.gardenofthegodsclub.com/', capacity: 250, user: user, picture: file6
Venue.create name: 'Stonebrook Manor', budget: 3, phone_number: '9026374859', address: '650 E. 124th Ave', city: 'Thorton', state: 'CO', zip: 80241, website: 'http://www.stonebrookmanor.com/', capacity: 800, user: user, picture: file7
Venue.create name: 'Black Canyon Inn', budget: 2, phone_number: '9026374859', address: '800 MacGregor Avenue', city: 'Estes Park', state: 'CO', zip: 80517, website: 'http://www.myestesparkwedding.com/index.html', capacity: 175, user: user, picture: file8
Venue.create name: 'Wild Basin Lodge', budget: 1, phone_number: '9026374859', address: '1130 County Road 84 W', city: 'Allenspark', state: 'CO', zip: 80510, website: 'http://www.wildbasinlodge.com/', capacity: 200, user: user, picture: file9
Venue.create name: 'Telluride Ski Resort', budget: 2, phone_number: '9026374859', address: '565 Mountain Village Blvd', city: 'Telluride', state: 'CO', zip: 81435, website: 'http://tellurideskiresort.com/weddings', capacity: 250, user: user, picture: file10
Venue.create name: 'Crystal Rose', budget: 3, phone_number: '9026374859', address: '9350 Grant Street', city: 'Thorton', state: 'CO', zip: 80229, website: 'http://www.crystal-rose.com/', capacity: 200, user: user, picture: file11
Venue.create name: 'Le Meridien Delfina', budget: 2, phone_number: '9026374859', address: '530 Pico Boulevard', city: 'Santa Monica', state: 'CA', zip: 90405, website: 'www.lemeridiendelfina.com', capacity: 300, user: user, picture: file12
Venue.create name: 'The Line Hotel', budget: 1, phone_number: '9026374859', address: '3515 Wilshire Boulevard', city: 'Los Angeles', state: 'CA', zip: 90010, website: 'www.thelinehotel.com/weddings', capacity: 400, user: user, picture: file13
Venue.create name: 'Four Seasons Hotel', budget: 2, phone_number: '9026374859', address: 'Two Dole Drive', city: 'Westlake Village', state: 'CA', zip: 91362, website: 'http://www.fourseasons.com/content/fourseasons/en/properties/westlakevillage/', capacity: 700, user: user, picture: file14
Venue.create name: 'California Yacht Club', budget: 3, phone_number: '9026374859', address: '4469 Admiralty Way', city: 'Marina Del Rey', state: 'CA', zip: 90292, website: 'www.clubweddings.com', capacity: 200, user: user, picture: file15
Venue.create name: 'Intercontinential Los Angeles', budget: 2, phone_number: '9026374859', address: '2151 Avenue of the Stars', city: 'Los Angeles', state: 'CA', zip: 90067, website: 'www.intercontinentallosangeles.com', capacity: 400, user: user, picture: file16
Venue.create name: 'The Victorian Santa Monica', budget: 1, phone_number: '9026374859', address: '2640 Main Street', city: 'Santa Monica', state: 'CA', zip: 90405, website: 'www.thevictorian.com', capacity: 400, user: user, picture: file17
Venue.create name: 'Hummingbird Nest', budget: 2, phone_number: '9026374859', address: '2940 Kuehner Drive', city: 'Santa Susana', state: 'CA', zip: 93063, website: 'www.hummingbirdnestranch.com', capacity: 5000, user: user, picture: file18
Venue.create name: 'Hollywood Hotel', budget: 3, phone_number: '9026374859', address: '1160 North Vermont Avenue', city: 'Hollywood', state: 'CA', zip: 90029, website: 'www.hollywoodhotel.net', capacity: 250, user: user, picture: file19