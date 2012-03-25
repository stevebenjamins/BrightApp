class PagesController < ApplicationController

  def show
    website = Website.find_by_domain(params[:websitedomain])
    @page = Page.where("website_id = ? AND permalink = ?", website.id, params[:permalink]).first
  end
    
end