class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :upvote, :downvote]
  
  def index
    @posts = Post.includes(:user).all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to @post, notice: "Post was successfully created"
    else
      render action: "new"
    end
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments.includes(:user).all
    @comment = @comments.build
  end

  def upvote
    post = Post.find(params[:post_id])
    service_result = VotingService.new(post, current_user).upvote
    redirect_to post, service_result
  end

  def downvote
    post = Post.find(params[:post_id])
    service_result = VotingService.new(post, current_user).downvote
    redirect_to post, service_result
  end


  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
