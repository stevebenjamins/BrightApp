class PageElement < ActiveRecord::Base

  belongs_to :page
  belongs_to :element, :polymorphic => true

end
