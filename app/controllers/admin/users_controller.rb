class Admin::UsersController < ApplicationController

  before_filter :require_login
  layout "admin"

  def edit
    @user = User.find(session[:user_id])
  end
  
  def show 

  end
    
  def index

  end
  
end