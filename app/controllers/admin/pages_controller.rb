class Admin::PagesController < ApplicationController

  before_filter :require_login
  layout "admin_editor", :except => :new 
    
  def new  
    @page = Page.new
    render :layout => "lightbox"
  end

    def edit  
      @page = Page.find(params[:id])
      render :layout => "lightbox"
    end
  
  def create
    @page = Page.new
    @page.name = params[:page][:name]
    website = Website.find_by_user_id(session[:user_id])
    @page.website_id = website.id
    permalink = params[:page][:name]
    @page.permalink = permalink.gsub(/\s/, "-").gsub(/([^\W-])/, '\1').downcase
    if @page.save
      redirect_to admin_dashboard_url, notice: 'Entry was successfully created.' 
    else
      render action: "new"
    end
  end
   
  def update
    @page = Page.find(params[:id])

    if @page.update_attributes(params[:page])
      redirect_to admin_url(@page.permalink), notice: 'Entry was successfully updated.' 
    else
      render action: "edit" 
    end
    
  end

  def show
    user = User.find(session[:user_id])
    @page = Page.where("website_id = ? AND permalink = ?", user.website_id, params[:permalink]).first
  end
  
  def destroy 
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to admin_dashboard_url
  end
      
end