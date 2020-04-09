class HelpfulItemsController < ApplicationController

    def index
        @items = HelpfulItem.all
        render json: @items
    end

    def show
        @item = HelpfulItem.find(params[:id])
        render json: @item
    end

end
