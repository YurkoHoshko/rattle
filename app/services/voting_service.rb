class VotingService
  
  attr_reader :post, :user

  def initialize(post, user)
    @post = post
    @user = user
  end 
 
  def upvote    
    execute(:+)
  end

  def downvote
    execute(:-)
  end

  private

  def vote_params
    { user_id: user.id, post_id: post.id }
  end

  def execute(operation)
    Post.transaction do
      previous_vote = Vote.where(vote_params).first
      if previous_vote
        { flash: { error: "You can not vote more then once per post" } } 
      else
        Vote.create(vote_params)
        post.update_attributes(score: post.score.send(operation, 1))
        { flash: { notice: "Your vote was successfully counted" } }
      end
    end
  end
end