class CategoriesController < ApplicationController

    def index
        @categories = Category.all
        render json: @categories
    end

    def show
        @category = Category.find(params[:id])
        render json: @category
    end
    
    def create
        @category = Category.create(category_params)
        render json: @category
    end

    private
    
    def category_params
        params.require(:category).permit(:name, :description, :image_url)
    end

end
