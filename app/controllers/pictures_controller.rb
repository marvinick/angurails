class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
    @uploader = Picture.new.image
    @uploader.success_action_redirect = new_picture_url
  end

  def new
    @picture = Picture.new(key: params[:key])
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
