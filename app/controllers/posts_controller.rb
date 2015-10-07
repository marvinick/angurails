class PostsController < ApplicationController
  respond_to :json

  def index
    respond_to do |format|
      format.json { render json: Picture.all }
      format.html
    end
  end

  def create
    respond_with Post.create(post_params)
  end

  def destroy
    respond_with Post.destroy(params[:id])
  end

private
  def post_params
    params.require(:post).permit(:title, :description)
  end
end
