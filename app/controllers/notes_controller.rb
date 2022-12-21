class NotesController < ApplicationController
    def index
        if session[:local_id].nil?
            render :json => 'User not logged in'
        else
            render :json => 'User logged in'
        end
    end
end