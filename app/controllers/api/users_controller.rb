class Api::UsersController < ApplicationController
    def create
        @user = User.new(user_params)

        if @user.save
            login(@user)
            render "api/users/show"
        else
            render json: @user.errors.full_messages, status: 422
        end
    end

    def index
        if params[:username]
            @user = User.find_by(username: params[:username])
            render "api/users/show"
        else
            render json: @user.errors.full_messages, status: 401
        end
    end

    def show 
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if user_params[:pic]
            @user.pic.attach(user_params[:pic])
        elsif @user && @user.update(user_params)
            render "api/users/show"
        else
            render json: @user.errors.full_messages, status: 401
        end
    end

    def search
        @users = User.where('username LIKE ?', "%#{params[:username]}%")
        if @users
            # render :search
            render "api/users/search"
        else 
            # render json: @users.errors.full_messages, status: 401
            render json: ["Sorry, no users found"], status: 401
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :name, :email, :pic, :id)
    end
end