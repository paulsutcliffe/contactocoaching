class Team < ActiveRecord::Base
  translates :name, :description  
  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  validates_attachment_size :photo, :less_than => 1.megabytes
  
  validates :name, :presence => true
  validates :description, :presence => true
  
  has_attached_file :photo, :styles => { :photo => ["160x220", :jpg] }
end
