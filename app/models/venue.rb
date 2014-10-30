class Venue < ActiveRecord::Base
  has_many :medias
  belongs_to :user
  mount_uploader :picture, PictureUploader

  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode  # auto-fetch address
  geocoded_by :address

  # auto-fetch coordinates
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
end
