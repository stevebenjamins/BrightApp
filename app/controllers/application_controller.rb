class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def require_login
    if session[:user_id].blank?
      redirect_to root_url, :notice => "You need to sign in first."
      return false
    end
      @user = User.find(session[:user_id])
  end
  
  def require_logout
    if session[:user_id]
      redirect_to admin_dashboard_url
    end
  end
  
end
