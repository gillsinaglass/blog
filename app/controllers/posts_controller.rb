class PostsController < ApplicationController


  def index
    @post = Post.all
  end

  def new
    @post = Post.new(post_params)
  end

  def create
    @post = Post.create(post_params)
    redirect_to @post
  end

  def show
  end

  def edit
  end

  def update
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :description, :author_id, :reader_id)
  end


end
