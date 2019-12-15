class CategoriesController < ApplicationController

    def index
        @parent_categories = Category.where(ancestry: nil)
        @child_categories = Category.where.not(ancestry: nil)
    end

    def show
        @category = Category.find(params[:id])
        @posts = Post.where(category_id: @category.id)
    end

end
