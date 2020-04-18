class UsersController < ApplicationController
    before_action :check_to_see_if_logged_in, only: [:edit, :update, :destroy]
    before_action :set_user, only: [:show, :edit, :update, :destroy]

########## login methods #########

    def login
        @errors = flash[:errors]
    end

    def handle_login
        @user = User.find_by(email_address: params[:email_address])

        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to @user
        else
            flash[:error] = "Invalid username or password"
            redirect_to login_path
        end
    end

    def logout
        session[:user_id] = nil
        redirect_to controller: 'welcome', action: 'home'
    end

########## model actions #########

    def index
        @users = User.all 
    end

    def show
    end

    def new
        @user = User.new
        @errors = flash[:errors]
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            session[:user_id] = @user.id
            redirect_to @user
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to signup_path
        end
    end

    def edit
    end

    def update
        @user.update!(user_params)
        redirect_to @user
    end

    private
    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :email_address, :password, :password_confirmation)
    end
end
