class SessionsController < ApplicationController

    get '/login' do
        redirect_if_logged_in
        erb :"sessions/login"
    end

    post '/login' do
        @user = User.find_by(username: params[:username])

        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect "/tattoos"
        else
            flash[:login_issue] = "You've entered an invalid username or password - please try again."
            redirect "sessions/login"
        end
    end

    get '/logout' do
        session.clear
        redirect "/login"
    end

end