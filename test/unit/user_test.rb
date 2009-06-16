require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  test "if the eager loading should return the same result" do
    user = User.new(:screen_name=>'abc', :email=>'aaa@rails.2.3.com')
    user.save
    post = Post.new(:title=>'title', :body=>'.......', :user_id=>user.id)
    post.save
    comment1 = Comment.new(:nickname=>'abc', :body=>'', :post_id=>post.id, :user_id=>user.id)
    comment1.save
    # if there is a comment which is not related to post in some reasons...
    comment2 = Comment.new(:nickname=>'-', :body=>'', :user_id=>user.id)
    comment2.save
    
    u1 = User.find :all
    u2 = User.find :all, :include=>['posts_commented']
    assert_equal u1[0].posts_commented.size, u2[0].posts_commented.size
  end
end
