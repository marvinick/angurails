class PlacesController < ApplicationController
	respond_to :json, :html

	def index
		@places = Place.all

		@hash = Gmaps4rails.build_markers(@places) do |place, marker|
		  marker.lat place.latitude
		  marker.lng place.longitude
    end
	end

end
