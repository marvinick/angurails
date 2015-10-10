class Location < ActiveRecord
	geocoded_by :address
	after_validation :geocode
end
