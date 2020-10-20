class TattoosController < ApplicationController

  # GET: /tattoos
  get "/tattoos" do
    redirect_if_not_logged_in
    @tattoos = Tattoo.sort
    erb :"/tattoos/index"
  end

  # # GET: /tattoos/new
  get "/tattoos/new" do
    redirect_if_not_logged_in
    @artists = Artist.all
    erb :"/tattoos/new"
  end

  # # POST: /tattoos
  post "/tattoos" do
    tattoo = current_user.tattoos.build(params)
    if tattoo.save
      redirect "/tattoos/#{tattoo.id}"
    else
      flash[:new_tat_issue] = "You've left a required field blank."
      redirect "/tattoos/new" #fix to show error messages
    end
  end

  # # GET: /tattoos/5
  get "/tattoos/:id" do
    redirect_if_not_logged_in
    @tat = Tattoo.find_by_id(params[:id])
    erb :"/tattoos/show"
  end

  # # GET: /tattoos/5/edit
  get "/tattoos/:id/edit" do
    redirect_if_not_logged_in
    @artists = Artist.all
    @tat = Tattoo.find_by_id(params[:id])
    if @tat.user_id == current_user.id
      erb :"/tattoos/edit"
    else
      redirect "/tattoos"
    end
  end

  # # PATCH: /tattoos/5
  patch "/tattoos/:id" do
    @tat = Tattoo.find_by_id(params[:id])
    params.delete("_method")
    if @tat.update(params)
        redirect "/tattoos/#{@tat.id}"
    else
      flash[:new_tat_issue] = "You've left a required field blank."
      redirect "tattoos/new"
    end
  end

  # # DELETE: /tattoos/5/delete
  delete "/tattoos/:id" do
    @tat = Tattoo.find_by_id(params[:id])
    if @tat.user_id == current_user.id
        @tat.destroy
    end
    redirect "/tattoos"
  end
end
