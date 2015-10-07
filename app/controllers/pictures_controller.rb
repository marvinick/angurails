class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy]

  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
  	@picture = Picture.create(picture_params)
  	if @picture.save
  	  render json: { message: "success" }, :status => 200
  	else
  	  #  you need to send an error header, otherwise Dropzone
          #  will not interpret the response as an error:
  	  render json: { error: @picture.errors.full_messages.join(',')}, :status => 400
  	end
  end

  def show; end

  def edit; end

  def update
    @picture.update(picture_params)
    redirect_to pictures_path
  end

  def destroy
    @picture.destroy
    redirect_to pictures_path
  end

  private

  def picture_params
    params.require(:picture).permit(:title, :price, :description, :image, :remote_image_url)
  end

  def set_picture
    @picture = Picture.find(params[:id])
  end

end
