class PlacesController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
	respond_to :json, :html

	def index
		@places = Place.all

		@hash = Gmaps4rails.build_markers(@places) do |place, marker|
		  marker.lat place.latitude
		  marker.lng place.longitude
			marker.json({:id => place.id })
			marker.infowindow place.name
			marker.infowindow render_to_string(:partial => "/places/infowindow", :locals => { :object => place })
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

	def show
		@place = Place.find(params[:id])
	end

	private

	def place_params
		params.require(:place).permit(:name, :state)
	end

end
