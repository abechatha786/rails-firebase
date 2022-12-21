class NotesController < ApplicationController
    before_action :authenticate_user

    def index
        render :json => 'Congrats! you can access your notes now.'
    end
end