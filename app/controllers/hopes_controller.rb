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
        @hope = Hope.create(
            params.require(:hope).permit(:title, :description, :category)
        )

        redirect_to @hope
    end

    def edit
        find_hope
    end

    def update
        find_hope
        @hope.update(
            params.require(:hope).permit(:title, :description, :category)
        )
        redirect_to @hope
    end

    def delete
        find_hope
        @hope.destroy
        redirect_to hopes_path
    end

    private
    def find_hope
        @hope = Hope.find(params[:id])
    end
end
