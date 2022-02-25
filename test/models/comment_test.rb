require "test_helper"

class CommentTest < ActiveSupport::TestCase
  test "comment body empty" do
    user = User.new(email: users(:one).email,
                    encrypted_password: users(:one).encrypted_password)
    post = Post.new(caption: posts(:two).caption,
                        ispublic: posts(:one).ispublic,
                        user_id: user.id
                        )
    comment = Comment.new(body: "", post_id: post.id, user_id: user.id)     
    assert comment.invalid?
    assert comment.errors[:body].any?
  end
  test "comment body more than 255 characters" do
    user = User.new(email: users(:one).email,
                    encrypted_password: users(:one).encrypted_password)
    post = Post.new(caption: posts(:two).caption,
                        ispublic: posts(:one).ispublic,
                        user_id: user.id
                        )
    comment = Comment.new(body: comments(:two).body, post_id: post.id, user_id: user.id)     
    assert comment.invalid?
    assert comment.errors[:body].any?
                      end      

                            

end
