class Contact < ActiveRecord::Base

  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
  
  validates :name, :presence => true, :length => { :maximum => 50 }
  validates :last_name, :presence => true, :length => { :maximum => 50 }
  validates :cell, :presence => true, :length => { :maximum => 20 }
  validates :office, :presence => true, :length => { :maximum => 20 }
  validates :email, :presence => true, :length => { :maximum => 100 }, 
    :format => EMAIL_REGEX
  validates :message, :presence => true, :length => { :maximum => 1000 }
  
end
