class SessionsController < ApplicationController
  def new
  end

  def create
    # return redirect_to(controller: 'sessions',
    #   action: 'new') if !params[:name] || params[:name].empty?

    # If the user does not enter a username and presses Enter, it will re-render new.html.erb
    if !params[:name] || params[:name].empty?
      return redirect_to controller: 'sessions', action: 'new'
    end

    session[:name] = params[:name]
    redirect_to controller: 'application', action: 'hello'
  end

  def destroy
    session.delete :name
    redirect_to controller: "application", action: "hello"
  end
end
