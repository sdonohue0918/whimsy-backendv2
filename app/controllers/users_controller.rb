class UsersController < ApplicationController

    def index
        users = User.all 
        render json: users
    end

    def create
        
        user = User.create(username: params[:user][:username], email: params[:user][:email], password: params[:user][:password])
        render json: user
    end
    
    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end