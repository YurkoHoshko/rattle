class PostsController < ApplicationController
  def index
    @posts = Post.limit(10)
  end

  def new
  end
end
