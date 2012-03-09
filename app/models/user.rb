class User < ActiveRecord::Base

  has_secure_password

  validates :name, :presence => true
  validates :email, :format => { :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/, :message => "does not appear to be the right format." }

  belongs_to :website

end
