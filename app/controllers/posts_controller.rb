class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to posts_path
  end

  def show
    @picture = Picture.new
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

private
  def post_params
    params.require(:post).permit(:title, :description)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
