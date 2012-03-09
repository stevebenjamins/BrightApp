class SessionsController < ApplicationController
 
  layout "public"
  
  def new    
    require_logout
  end
  
  def create
    @user = User.find_by_email(params[:email])
    if @user.present? && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to admin_dashboard_url, :notice => "Welcome!"
    else
      redirect_to new_session_url, :notice => "Incorrect username or password."
    end
    
  end
  
  def destroy
    reset_session
    redirect_to root_url, :notice => "You have been signed out."
  end
  
  
end