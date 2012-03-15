class Admin::Element::ParagraphsController < ApplicationController

  before_filter :require_login

  def new 
    @page = Page.find(params[:page_id])
    @paragraph = Paragraph.new
  end
    
  def create
    @page = Page.find(params[:page_id])
    @paragraph = Paragraph.new(params[:paragraph])
    
    if @paragraph.save 
      @page.page_elements.create(:element => @paragraph)
      redirect_to admin_url(@page.permalink)
    end
    
  end    
  
  def destroy 
    @paragraph = Paragraph.find(params[:id])
    permalink = @paragraph.page.permalink
    @paragraph.destroy
    redirect_to admin_url(permalink), notice: 'Paragraph Succesfully Deleted'
  end 
      
end