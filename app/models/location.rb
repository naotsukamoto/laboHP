class Location < ApplicationRecord
  # for googlemap
  geocoded_by :address
  after_validation :geocode
end
