class Commodity < ActiveRecord::Base
	geocoded_by :latitude, :longitude #:full_street_address  #, :latitude  => :lat1, :longitude => :lat2 # ActiveRecord
	#reverse_geocoded_by :lat1, :lat2, :address => :location
	after_validation :geocode
	reverse_geocoded_by :latitude, :longitude
	after_validation :reverse_geocode  # auto-fetch address
end
