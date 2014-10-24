# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Venue.create name: 'San Diego Zoo', city: 'San Diego', state: 'CA', budget: 1
Venue.create name: 'Kowloon Park', city: 'Hong Kong', state: nil, budget: 2
Venue.create name: 'IFC', city: 'Hong Kong', state: nil, budget: 3