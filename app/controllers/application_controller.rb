class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def current_user
    return session[:name]
  end
  
  def verify_logged_in
    return redirect_to root_path unless session.include? :name
  end
  
end
