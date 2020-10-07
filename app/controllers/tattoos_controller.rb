class TattoosController < ApplicationController

  # GET: /tattoos
  get "/tattoos" do
    erb :"/tattoos/index.html"
  end

  # GET: /tattoos/new
  get "/tattoos/new" do
    erb :"/tattoos/new.html"
  end

  # POST: /tattoos
  post "/tattoos" do
    redirect "/tattoos"
  end

  # GET: /tattoos/5
  get "/tattoos/:id" do
    erb :"/tattoos/show.html"
  end

  # GET: /tattoos/5/edit
  get "/tattoos/:id/edit" do
    erb :"/tattoos/edit.html"
  end

  # PATCH: /tattoos/5
  patch "/tattoos/:id" do
    redirect "/tattoos/:id"
  end

  # DELETE: /tattoos/5/delete
  delete "/tattoos/:id/delete" do
    redirect "/tattoos"
  end
end
