class UsersController < ApplicationController

  # GET: /use_rs
  get "/users" do
    erb :"/users/index.html"
  end

  # GET: /use_rs/new
  get "/users/new" do
    erb :"/users/new.html"
  end

  # POST: /use_rs
  post "/users" do
    redirect "/users"
  end

  # GET: /use_rs/5
  get "/users/:id" do
    erb :"/users/show.html"
  end

  # GET: /use_rs/5/edit
  get "/users/:id/edit" do
    erb :"/users/edit.html"
  end

  # PATCH: /use_rs/5
  patch "/users/:id" do
    redirect "/users/:id"
  end

  # DELETE: /use_rs/5/delete
  delete "/users/:id/delete" do
    redirect "/users"
  end
end
