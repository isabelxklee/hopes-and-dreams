class WelcomeController < ApplicationController

    def home
        if logged_in?
            redirect_to user_path(@logged_in_user)
        end
    end

end