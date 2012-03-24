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

    respond_to do |format|
      if @paragraph.update_attributes(params[:paragraph])
        format.js 
      else
        format.js 
      end
    end
  end
        
  def create

    @page = Page.find(params[:page_id])
    @paragraph = Paragraph.new(params[:paragraph])
    
    respond_to do |format|
      if @paragraph.save 
        @test = "test"
        if @page.page_elements.create(:element => @paragraph)
          format.js 
        end
      else
          format.js
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