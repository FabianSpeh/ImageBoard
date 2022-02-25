require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "empty attributes" do
    user = User.new()
    p
     assert user.invalid?
     assert user.errors[:email].any?
     assert user.errors[:password].any?
     
  end
  test "email not an email" do
    user = User.new(email: users(:two).email, password: users(:one).encrypted_password, password_confirmation: users(:one).encrypted_password)
    
     assert user.invalid?
     assert user.errors[:email].any?
     
  end

 
end
