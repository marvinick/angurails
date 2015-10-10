class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  def index
    @locations = Location.all
    @geojson = Array.new
    build_geojson(location, @geojson)
  end

  respond_to do |format|
    format.html
    format.json { render json: @geojson }
  end

  def build_geojson(locations, geojson)
    @locations.each do |location|
      geojson << GeojsonBuilder.build_location(location)
    end
  end

  def show; end

  def new
    @location = Location.new
  end

  def edit
  end

  def create
    @location = Location.new(location_params)
    @location.save
    redirect_to locations_path
  end

  def update
    @location.update(location_params)
    respond_with(@location)
  end

  def destroy
    @location.destroy
    respond_with(@location)
  end

  private
    def set_location
      @location = Location.find(params[:id])
    end

    def location_params
      params.require(:location).permit(:address, :state, :country, :zipcode, :latitude, :longitude)
    end
end
