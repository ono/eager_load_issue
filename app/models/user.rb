class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :posts_commented, :through=>:comments, :source=>:post
end
