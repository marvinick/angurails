class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
   @post = Post.find(params[:id])
   @picture = @post.pictures.build(picture_params)
   @picture.save
    redirect_to post_path(@post)
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
