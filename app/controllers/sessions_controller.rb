class SessionsController < ApplicationController
  before_action :verify_logged_in
  
  def new
  end
  
  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to secret_path
    else
      redirect_to login_path
    end
  end
  
  def destroy
    session.delete :name
  end
  
end
