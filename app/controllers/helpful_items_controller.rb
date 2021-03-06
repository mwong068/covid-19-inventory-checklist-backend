class HelpfulItemsController < ApplicationController

    def index
        @items = HelpfulItem.all
        render json: @items
    end

    def show
        @item = HelpfulItem.find(params[:id])
        render json: { user: HelpfulUserSerializer.new(@item) }
    end

    def create
        @item = HelpfulItem.create(item_params)
        render json: @item
    end

    private

    def item_params
        params.require(:helpful_item).permit(:name, :quantity, :description, :availability, :helpful_user_id, :category_id)
    end

end
