class Page < ActiveRecord::Base

  belongs_to :website
  has_many :page_elements
  has_many :paragraphs, :through => :page_elements, :source => :elements, :source_type => 'Paragraph' 

end
