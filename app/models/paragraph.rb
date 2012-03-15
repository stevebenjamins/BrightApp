class Paragraph < ActiveRecord::Base

  # :dependent => :destroy
  has_one :page_element, :as => :element
  has_one :page, :through => :page_elements

end

