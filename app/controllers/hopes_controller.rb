class HopesController < ApplicationController
    before_action :check_to_see_if_logged_in, only: [:edit, :update, :destroy]
    before_action :set_hope, only: [:show, :edit, :update, :destroy]
    before_action :logged_in_user

    def index
        @hopes = Hope.all
    end

    def show
        convert_time(@hope[:created_at])
    end

    def new
        @hope = Hope.new
    end

    def create
        # @hope = @logged_in_user.hopes.create(hope_params)
        # @hope.update!(category_id: params[:category_id])
        @hope = Hope.create(hope_params)
        @logged_in_user.hopes << @hope
        if @hope.valid?
            redirect_to hopes_path
        else
            flash[:errors] = @hope.errors.full_messages
            redirect_to controller: 'welcome', action: 'home'
        end
    end

    def edit
    end

    def update
        @hope.update(hope_params)
        redirect_to @hope
    end

    def destroy
        @hope.destroy
        redirect_to @hope.user
    end

    private
    def set_hope
        @hope = Hope.find(params[:id])
    end

    def hope_params
        params.require(:hope).permit(:title, :date, :description, :category_id, :user_id)
    end

    def convert_time(datetime)
        @date = datetime.strftime("%B %d, %Y")
        @time = datetime.strftime("%I:%M %p")
    end
end
