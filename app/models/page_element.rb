class PageElement < ActiveRecord::Base

  belongs_to :page
  belongs_to :element, :polymorphic => true

  acts_as_list

end
