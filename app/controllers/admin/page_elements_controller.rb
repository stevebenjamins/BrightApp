class Admin::PageElementsController < ApplicationController

  def sort
    params[:page_element].each_with_index do |id, index|
      PageElement.update_all({position: index+1}, {id: id})
    end
    render nothing: true
  end
      
end