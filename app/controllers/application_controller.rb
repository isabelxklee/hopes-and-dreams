class ApplicationController < ActionController::Base
    helper_method :logged_in_user, :logged_in?

    def logged_in_user
        if session[:user_id]
            @logged_in_user = User.find_by(id: session[:user_id])
        end
    end

    def logged_in?
        !!logged_in_user
    end

    def check_to_see_if_logged_in
        redirect_to user_login_path unless logged_in?
    end

    def convert_time(datetime)
        @date = datetime.strftime("%B %d, %Y")
        @time = datetime.strftime("%I:%M %p")
    end
end