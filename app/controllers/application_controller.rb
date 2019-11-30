class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    redirect_to controller: 'sessions', action: 'new' unless session[:name]
  end

  def current_user
    session[:name]
    # return head(:forbidden) unless session.include?(:username)
    # @current_user ||= User.find(session[:username])
  end

  def require_login
    redirect_to controller: "sessions", action: "new" unless current_user
  end
end

#HOW DO WE KNOW WHEN TO ADD THINGS TO THE APPLICATION CONTROLLER?