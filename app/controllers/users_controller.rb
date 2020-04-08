class UsersController < ApplicationController
    def index
        @users = User.all 
    end

    def show
        find_user
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            redirect_to @user
        else
            render :new
        end
    end

    def edit
        find_user
    end

    def update
        find_user
        @user.update(user_params)
        redirect_to @user
    end

    private
    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name)
    end
end
