module ApplicationHelper

  def template_stylesheet
    stylesheet_link_tag    "templates/carpenter", :media => "all" 
  end

end
