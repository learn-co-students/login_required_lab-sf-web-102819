class SessionsController < ApplicationController
  def new
    #show the user the login form
  end

  def create
    #we trust the user and will create/login the account without a password
    #using the username the user provides we add it to the sessions as a key of :username
    #for more complex apps we would use a user_id that would be connected to the user's account
    #when the :username is added to the session we redirect them to root AKA "/"
    if params[:name] == nil || params[:name].empty?
      redirect_to(controller: "sessions", action: "new")
    else
      session[:name] = params[:name]
      redirect_to(controller: "application", action: "hello")
    end
  end

  def destroy
    session.delete :name
  end
end