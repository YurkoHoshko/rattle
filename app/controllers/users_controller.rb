class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @last_comments = @user.comments.order("created_at DESC").limit(5)
  end
end
