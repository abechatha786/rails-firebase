require 'net/http'
require 'uri'
require 'json'
class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
    skip_before_action :authenticate_user

    def index
    end

    def signup
        email = params[:email]
        password = params[:password]

        uri = URI("https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=#{ENV["FIREBASE_KEY"]}")
        res = Net::HTTP.post_form(uri, "email" => email, "password" => password)


        data = JSON.parse(res.body)

        user_mail = data["email"]
        user_localId = data["localId"]

        if(user_mail.present? && user_localId.present?)
            @user = User.create(email: user_mail, local_id: user_localId)
            if @user.save && res.is_a?(Net::HTTPSuccess)
                render :json => 'user signed up suceesfully'
            end
        else
            render :json => data["error"]["message"]
        end
    end

    def signin
        email = params[:email]
        password = params[:password]
        uri = URI("https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=#{ENV["FIREBASE_KEY"]}")
        res = Net::HTTP.post_form(uri, "email" => email, "password" => password)


        data = JSON.parse(res.body)
        user_mail = data["email"]
        user_localId = data["localId"]

        if res.is_a?(Net::HTTPSuccess)
            session[:local_id] = data['localId']
            render :json => 'user signed in suceesfully'
        else
            render :json => data["error"]["message"]
        end
    end

    def signout
        session.clear
        render :json => 'user signed out suceesfully'
    end
end