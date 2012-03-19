module ApplicationHelper

  def template_stylesheet
    stylesheet_link_tag    "templates/carpenter", :media => "all" 
  end
  
  def display_element(e)
  
    if e.page_element.element_type == 'Paragraph'
  		render 'admin/element/paragraphs/paragraph', :paragraph => e 
  	end
  	
	end	
	

end
