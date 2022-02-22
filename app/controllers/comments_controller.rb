class CommentsController < ApplicationController

    skip_before_action :verify_authenticity_token

    def create

        @comment = current_user.comments.new(comment_params)
        if !@comment.save
            
    end
    redirect_to post_path(params[:post_id])
end

def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    puts(params)
    redirect_to post_path(params[:post_id])
end


    def comment_params
        params.require(:comment).permit(:body).merge(post_id: params[:post_id])
      end

end
