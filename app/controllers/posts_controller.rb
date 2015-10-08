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
    @post = Post.save
    redirect_to posts_path
  end

  def show; end

  def destroy
    Post.destroy(params[:id])
  end

private
  def post_params
    params.require(:post).permit(:title, :description)
  end

  def set_post
    @post = Post.find(:id)
  end
end
