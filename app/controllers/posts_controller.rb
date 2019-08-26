class PostsController < ApplicationController
  before_action :load_post, only: :show

  def index
    @posts = Post.includes(:comments)
  end

  def show
    @comments = @post.comments
    @comment = Comment.new
  end

  private

  def load_post
    @post = Post.includes(:comments).find_by(id: params[:id])
    redirect_to root_path unless @post
  end
end
