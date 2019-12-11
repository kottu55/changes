class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def show
        @post = Post.find(params[:id])
    end

    def create
        post = Post.new(post_params)
        post.user_id = current_user.id
        post.save
        puts post.errors.full_messages
        redirect_to posts_path
    end

    def destroy
    end

    def post_params
        params.require(:post).permit(:before_img, :after_img, :time_length, :caption, :category_id, :owned_tag_id, :page_views)
    end
end
