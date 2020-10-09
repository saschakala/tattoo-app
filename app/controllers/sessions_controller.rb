class SessionsController < ApplicationController

    get '/login' do
        erb :"sessions/login"
    end

    post '/login' do
        @user = User.find_by(username: params[:username])

        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect "/tattoos"
        else
            erb :"sessions/login" #show errors
        end
    end

    get '/logout' do
        session.clear
        redirect "/login"
    end

end