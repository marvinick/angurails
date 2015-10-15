class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @user = current_user
    @pictures = current_user.pictures
  end

  def new
    @picture = Picture.new
  end

  def create
   @picture = Picture.new(picture_params)
   @picture.user_id = current_user.id if current_user

    if @picture.save
      redirect_to pictures_path
    else
      render :new
    end
  end

  def show
    
  end

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
    params.require(:picture).permit(:title, :price, :description, :image, :user_id, :remote_image_url)
  end

  def set_picture
    @picture = Picture.find(params[:id])
  end
end
