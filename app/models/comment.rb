class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  has_many :replies, :class_name => "Comment", :foreign_key => "parent_id"

  validates :content, :post_id, :user_id, presence: true

  default_scope { order('created_at ASC') }
end