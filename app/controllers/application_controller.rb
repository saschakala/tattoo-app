require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :sessions, true
    set :session_secret, "keepitsecretkeepitsafe"
    register Sinatra::Flash
  end

  get "/" do
    erb :"users/signup"
  end

  helpers do

    def logged_in?
      session[:user_id]
    end

    def current_user
      @user ||= User.find_by_id(session[:user_id])
    end

    def redirect_if_not_logged_in
      if !logged_in?
        flash[:errors] = "Please log in to view this page."
        redirect "/login"
      end
    end

    def redirect_if_logged_in
      if logged_in?
        redirect "/tattoos"
      end
    end

  end


end
