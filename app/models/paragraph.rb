class Paragraph < ActiveRecord::Base

  has_one :page_element, :as => :element, :dependent => :destroy
  has_one :page, :through => :page_element

  validates :content, :presence => true
  

end

