class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)

    @picture.save
     redirect_to pictures_path
  end

  private

  def picture_params
    params.require(:picture).permit(:title, :price, :description, :image, :remote_image_url)
  end

end