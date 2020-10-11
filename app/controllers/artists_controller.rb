class ArtistsController < ApplicationController

    get "/artists/signup" do
        # redirect_if_logged_in
        erb :"/artists/signup"
      end
    
      post "/artists" do
        @artist = Artist.new(params)
        if @artist && @artist.save #if no creation errors and it saves, log user in
          session[:artist_id] = @artist.id
          redirect '/tattoos'
        else
          erb :"artists/signup" #add error messages to sign up page for when there's a sign up error
        end
      end
    end