class Cocktail < ApplicationRecord
  #tell geocoder where to look to get the human-readable address string, which it will use to work out the lat/long coordinates
  geocoded_by :address
  after_validation :geocode

  belongs_to :user, optional: true
  has_many :comments
  #tell geocoder to actually turn the above address into a latitude and longitude(by doing a lookup in a remote API) any time you create or update a Cocktail item
end
