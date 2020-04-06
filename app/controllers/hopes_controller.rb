class HopesController < ApplicationController
    def index
        @hopes = Hope.all
    end

    def show
        @hope = Hope.find(params[:id])
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
        @hope = Hope.create(
            params.require(:hope).permit(:title, :description, :category)
        )

        redirect_to @hope
    end
end
