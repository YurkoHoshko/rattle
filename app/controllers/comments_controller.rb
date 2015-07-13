class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    comment.user_id = current_user.id
    post = Post.find(comment.post_id)
    if comment.save
      redirect_to post, flash: { notice: "Comment was successfully created" }
    else
      redirect_to post, flash: { error: "Comment was not added. Please try again." }
    end
  end

  private
  
  def comment_params
    params.require(:comment).permit(:content, :post_id, :parent_id)
  end
end