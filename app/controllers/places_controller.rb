class PlacesController < ApplicationController
	respond_to :json, :html

	def index
		@places = Place.all

		@hash = Gmaps4rails.build_markers(@places) do |place, marker|
		  marker.lat place.latitude
		  marker.lng place.longitude
			marker.infowindow place.name
    end
	end

	def new
		@place = Place.new
	end

	def create
		@place = Place.new(place_params)
		@place.save
		redirect_to places_path
	end

	private

	def place_params
		params.require(:place).permit(:name, :state)
	end

end
