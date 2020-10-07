class TattoosController < ApplicationController

  # GET: /tatto_os
  get "/tatto_os" do
    erb :"/tatto_os/index.html"
  end

  # GET: /tatto_os/new
  get "/tatto_os/new" do
    erb :"/tatto_os/new.html"
  end

  # POST: /tatto_os
  post "/tatto_os" do
    redirect "/tatto_os"
  end

  # GET: /tatto_os/5
  get "/tatto_os/:id" do
    erb :"/tatto_os/show.html"
  end

  # GET: /tatto_os/5/edit
  get "/tatto_os/:id/edit" do
    erb :"/tatto_os/edit.html"
  end

  # PATCH: /tatto_os/5
  patch "/tatto_os/:id" do
    redirect "/tatto_os/:id"
  end

  # DELETE: /tatto_os/5/delete
  delete "/tatto_os/:id/delete" do
    redirect "/tatto_os"
  end
end
