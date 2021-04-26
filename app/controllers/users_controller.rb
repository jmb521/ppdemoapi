class UsersController < ApplicationController

    def create
        @user = User.find_or_create_by(user_params)
        if @user.valid?
            render json: @user, include: :timeslots
        else
            render json: {errors: @user.errors}
        end
    end

    def show
        @user = User.find_by(id: params[:id])
        if @user
            render json: @user, include: :timeslots
        else
            render json: {
                status: "error", 
                errors: "uh....somethin wrong"
            }
        end
    end

    private
    def user_params
        params.require(:user).permit(:name, :email)
    end
    
end
