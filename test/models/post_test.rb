require "test_helper"

class PostTest < ActiveSupport::TestCase

  test "caption too long" do
    user = User.new(email: users(:one).email,
                    encrypted_password: users(:one).encrypted_password)
    post = Post.new(caption: posts(:one).caption,
                        ispublic: posts(:one).ispublic,
                        user_id: user.id
                        )
  
  assert post.invalid?
  assert post.errors[:caption].any?
  end

  test "ispublic not set" do
    user = User.new(email: users(:one).email,
                    encrypted_password: users(:one).encrypted_password)
    post = Post.new(caption: posts(:two).caption,
                        user_id: user.id
                        )
  
  assert post.invalid?
  assert post.errors[:ispublic].any?
  end

  
end
