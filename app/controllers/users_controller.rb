class UsersController < ApplicationController

    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user
        else
            render json: {error: "Somethin's not right"}
        end
    end

    private
    def user_params
        params.require(:user).permit(:name, :email)
    end
    
end