class SessionsController < ApplicationController
  before_action :verify_logged_in
  
  def new
  end
  
  def create
    session[:name] = params[:name]
    redirect_to secret_path
  end
  
  def destroy
    session.delete :name
  end
  
end
