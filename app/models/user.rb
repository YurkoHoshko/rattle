class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :rememberable

  has_many :posts
  has_many :votes
  has_many :comments
end
