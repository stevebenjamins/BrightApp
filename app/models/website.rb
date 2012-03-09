class Website < ActiveRecord::Base

  has_many :users
  has_many :pages
  
  accepts_nested_attributes_for :users 

end
