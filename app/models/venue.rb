class Venue < ActiveRecord::Base
  belongs_to :user
  mount_uploader :picture, PictureUploader

  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode  # auto-fetch address
  geocoded_by :address
  after_validation :geocode          # auto-fetch coordinates
end
