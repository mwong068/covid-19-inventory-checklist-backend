class HelpfulUsersController < ApplicationController
    def index
        @users = HelpfulUser.all
        render json: @users
    end

    def show
        @users = HelpfulUser.find(params[:id])
        render json: @user
    end
    
end
