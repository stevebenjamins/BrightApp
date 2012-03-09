class Admin::WebsitesController < ApplicationController

  before_filter :require_login
  layout "admin"

  def edit
    @website = Website.find_by_user_id(session[:user_id])
  end
  
  def update
    @website = Website.find(params[:id])

    if @website.update_attributes(params[:page])
      redirect_to admin_dashboard_url, notice: 'Entry was successfully updated.' 
    else
      render action: "edit" 
    end
    
  end
    
end