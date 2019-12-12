class CommentsController < ApplicationController

    def create
        comment = Comment.new(comment_params)
        comment.user_id = current_user.id
        comment.post_id = params[:post_id]
        if comment.save
            redirect_to post_path(params[:post_id])
        else
            lender_to post_path(params[:post_id])
        end
    end

    def destroy
        comment = Comment.find(params[:post_id])
        comment.destroy
        redirect_to post_path(params[:id])
    end

    private

    def comment_params
        params.require(:comment).permit(:user_id, :post_id, :comment)
    end

end
