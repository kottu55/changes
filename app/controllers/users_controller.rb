class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
        @posts = Post.by_user(params[:id])
    end
end
