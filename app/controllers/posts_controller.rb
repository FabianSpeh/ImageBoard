class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]

  # GET /posts or /posts.json
  def index
    if user_signed_in?
    @posts = Post.where(:user_id => current_user.id)
    else
      redirect_to board_index_path
    end
  end

# https://blog.corsego.com/gem-acts-as-votable-2
  def upvote
    @post = Post.find(params[:id])
   if current_user.voted_up_on? @post
      @post.unvote_by current_user
   else
    @post.upvote_by current_user
    
  end
  render "vote.js.erb"
end

  # GET /posts/1 or /posts/1.json
  def show
    if user_signed_in? == false
      redirect_to board_index_path
    end
  end

  # GET /posts/new
  def new
    if user_signed_in?
    @post = Post.new
  else
    redirect_to board_index_path
  end
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts or /posts.json
  def create
    
    @post = Post.new(post_params.merge(user_id: current_user.id))

    respond_to do |format|
      if @post.save
        format.html { redirect_to post_url(@post), notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to post_url(@post), notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:caption, :image, :ispublic, :tag_list)
    end
end
