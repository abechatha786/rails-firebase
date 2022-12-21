class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    protect_from_forgery with: :null_session
    before_action :authenticate_user



    private

    def authenticate_user
        if session[:local_id].nil?
            render :json => 'user not authenticated'
        else
            return true
        end
    end
end
