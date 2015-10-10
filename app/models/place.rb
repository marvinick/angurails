class Place < ActiveRecord::Base
	geocoded_by :name
	after_validation :geocode

	def gmaps4rails_address
	  "#{name}, #{state}"
	end
end
