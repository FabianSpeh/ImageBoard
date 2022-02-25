require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
include Devise::Test::IntegrationHelpers
  
  setup do
    @post = posts(:one)
  end

#   test "should get index" do
#     get board_index_path
#     assert_response :success
#   end
#   test "should not get new when not logged in" do
#     get new_post_path
#     assert_response :redirect
#   end
#   test "should get new when logged in" do
#     sign_in users(:one)
#     get new_post_path
#     assert_response :success
#   end

#   test "should create post" do
#     assert_difference('Post.count') do
#       post posts_path, params: { post: { caption: @post.caption, ispublic: @post.ispublic } }
#     end

#     assert_redirected_to post_url(Post.last)
#   end

#   test "should show post" do
#     sign_in users(:one)
#     get post_path(@post)
#     assert_response :success
#   end

#   test "should get edit" do
#     get edit_post_path(@post)
#     assert_response :success
#   end

#   test "should update post" do
#     patch post_path(@post), params: { post: { caption: @post.caption, ispublic: @post.ispublic  } }
#     assert_redirected_to post_url(@post)
#   end

#   test "should destroy post" do
#     assert_difference('Post.count', -1) do
#       delete post_path(@post)
#     end

#     assert_redirected_to posts_url
#   end
 end
