class SessionsController < ApplicationController

    get '/login' do
        redirect_if_logged_in
        erb :"sessions/login"
    end

    post '/login' do
        case 
        when @user = User.find_by(username: params[:username])
            if @user && @user.authenticate(params[:password])
                session[:user_id] = @user.id
                redirect "/tattoos"
            else    
                flash[:login_issue] = "You've entered an invalid username or password - please try again."
                redirect "sessions/login"
            end
        when @artist = Artist.find_by(username: params[:username])
            if @artist && @artist.authenticate(params[:password])
                session[:artist_id] = @artist.id
                redirect "/tattoos"
            else    
                flash[:login_issue] = "You've entered an invalid username or password - please try again."
                redirect "sessions/login"
            end
        end
    end

    get '/logout' do
        session.clear
        redirect "/login"
    end

end