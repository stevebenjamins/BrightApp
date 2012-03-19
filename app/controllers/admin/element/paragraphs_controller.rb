class Admin::Element::ParagraphsController < ApplicationController

  before_filter :require_login
  layout "lightbox" 

  def new 
    @page = Page.find(params[:page_id])
    @paragraph = Paragraph.new
  end

  def edit 
    @page = Page.find(params[:page_id])
    @paragraph = Paragraph.find(params[:id])
  end

  def update 
    @page = Page.find(params[:page_id])
    @paragraph = Paragraph.find(params[:id])

    if @paragraph.update_attributes(params[:paragraph])
      respond_to do |format|
        format.js 
      end
    else
      render action: "edit" 
    end
  end
        
  def create

    @page = Page.find(params[:page_id])
    @paragraph = Paragraph.new(params[:paragraph])
    
    if @paragraph.save 
      if @page.page_elements.create(:element => @paragraph)
        respond_to do |format|
          format.js 
        end
      end
    else
        respond_to do |format|
          format.html { render :action => :new }          
        end
    end
    
  end    
  
  def destroy 
    @paragraph = Paragraph.find(params[:id])
    permalink = @paragraph.page.permalink
    @paragraph.destroy
    respond_to do |format|
      format.js
    end
  end 
      
end