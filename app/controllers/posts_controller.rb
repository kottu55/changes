class PostsController < ApplicationController

    def index
        @posts = Post.pablish
    end

    def new
        @post = Post.new
    end

    def show
        @post = Post.find(params[:id])
        @comment = Comment.new
        @comments = Comment.where(post_id: params[:id])
    end

    def create
        post = Post.new(post_params)
        post.user_id = current_user.id
        if params[:publish]
            post.status = 1
            post.save
            redirect_to posts_path
        else # 下書きの場合
            post.status = 0
            post.save
            redirect_to user_path(current_user.id)
        end
    end

    def destroy
        post = Post.find(params[:id])
        if post.destroy
            redirect_to posts_path
        else
            lender post_path(params[:id])
        end
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        post = Post.find(params[:id])
        post.update(post_params)
        if params[:publish]
            post.update(status: 1)
        else
            post.update(status: 0)
        end
        redirect_to user_path(current_user.id)
    end

    def post_params
        params.require(:post).permit(:before_img, :after_img, :time_length, :caption, :category_id, :owned_tag_id, :page_views, :title)
    end
end
