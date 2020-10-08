class UsersController < ApplicationController

  # GET: /users
  get "/users/signup" do
    erb :"/users/signup"
  end

  post "/users" do
    @user = User.new(params)
    if @user && @user.save #if no validation errors and it saves, log user in
      session[:user_id] = @user.id
    else
      erb :"users/signup" #add error messages to sign up page for when there's a sign up error
    end
  end

#   # GET: /users/new
#   get "/users/new" do
#     erb :"/users/new.html"
#   end

#   # POST: /users
#   post "/users" do
#     redirect "/users"
#   end

#   # GET: /users/5
#   get "/users/:id" do
#     erb :"/users/show.html"
#   end

#   # GET: /users/5/edit
#   get "/users/:id/edit" do
#     erb :"/users/edit.html"
#   end

#   # PATCH: /users/5
#   patch "/users/:id" do
#     redirect "/users/:id"
#   end

#   # DELETE: /users/5/delete
#   delete "/users/:id/delete" do
#     redirect "/users"
#   end
end
