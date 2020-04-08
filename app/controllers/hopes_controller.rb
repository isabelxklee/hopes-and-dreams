class HopesController < ApplicationController
    def index
        @hopes = Hope.all
    end

    def show
        find_hope
        convert_time(@hope[:created_at])
    end

    def convert_time(datetime)
        @date = datetime.strftime("%B %d, %Y")
        @time = datetime.strftime("%I:%M %p")
    end

    def new
        @hope = Hope.new
    end

    def create
        @hope = Hope.new(hope_params)

        if @hope.valid?
            @hope.save
            redirect_to @hope
        else
            render :new
        end
    end

    def edit
        find_hope
    end

    def update
        find_hope
        @hope.update(hope_params)
        redirect_to @hope
    end

    def destroy
        find_hope
        @hope.destroy
        redirect_to @hope.user
    end

    private
    def find_hope
        @hope = Hope.find(params[:id])
    end

    def hope_params
        params.require(:hope).permit(:title, :description, :category, :user_id)
    end
end
