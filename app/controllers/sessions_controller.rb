class SessionsController < ApplicationController

    get '/login' do
        redirect_if_logged_in
        erb :"sessions/login"
    end

    post '/login' do
        if User.find_by(username: params[:username]).authenticate(params[:password])
            @user = User.find_by(username: params[:username])
            session[:user_id] = @user.id
            redirect "/tattoos"
        elsif Artist.find_by(username: params[:username]).authenticate(params[:password])
            @artist = Artist.find_by(username: params[:username])
            session[:artist_id] = @artist.id
            redirect "/tattoos"
        else    
            flash[:login_issue] = "You've entered an invalid username or password - please try again."
            redirect "/login"
        end
    end

    get '/logout' do
        session.clear
        redirect "/login"
    end

end