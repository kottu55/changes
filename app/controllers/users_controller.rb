class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
        @posts = Post.by_user(params[:id])
        @following_user = User.where(id: Relationship.where(user_id: params[:id]).pluck(:follow_id))
        @follower_user = User.where(id: Relationship.where(follow_id: params[:id]).pluck(:user_id))
    end
end
