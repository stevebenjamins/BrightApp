class WebsitesController < ApplicationController
 
  layout "public"
  
  def new
    @website = Website.new
    @website.users.build
  end
  
  def create
    @website = Website.new(params[:website])    
    if @website.save
      page = Page.new
      page.name = "Home"
      page.permalink = "home"
      page.website_id = @website.id
      page.save
      redirect_to root_url, :notice 'Thanks for registering-- just login below and you're ready to go!      
    else
        render action: "new"     
    end
  end
  
end